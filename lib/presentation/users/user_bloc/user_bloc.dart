import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_healtcare/core/usecase/usecase.dart';
import 'package:flutter_healtcare/data/models/user_model.dart';
import 'package:flutter_healtcare/domain/entities/user_entity.dart';
import 'package:flutter_healtcare/domain/usecases/get_user_usecase.dart';
import 'package:fpdart/fpdart.dart';
import 'package:stream_transform/stream_transform.dart';

part 'user_event.dart';
part 'user_state.dart';

const throttleDuration = Duration(milliseconds: 100);
const _postLimit = 20;

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({required this.getUsersUseCase}) : super(const UserState()) {
    on<UsersFetched>(_onPostFetched,
        transformer: throttleDroppable(throttleDuration));
  }

  final GetUsersUseCase getUsersUseCase;


  Future<void> _onPostFetched(
      UsersFetched event, Emitter<UserState> emit) async {
    if (state.hasReachedMax) return;
    try {
      if (state.status == UsersStatus.initial) {
        final usersResponse = await getUsersUseCase(
            const PaginatedListParams(limit: _postLimit, offset: 0));
        usersResponse.fold(
          (error) { 
            print("use fetch done ${state.status}");
            emit(state.copyWith(status: UsersStatus.failure));},
          (users)  {
            print("use fetch done ${state.status}");
            emit(state.copyWith(
            status: UsersStatus.success,
            users: users.results,
            hasReachedMax: false,

          ));
          },
        );
        return;
      }

      final usersResponse = await getUsersUseCase(
          PaginatedListParams(limit: _postLimit, offset: state.page));

      usersResponse.fold(
          (error) { 
            print("use fetch done ${state.status}");
            emit(state.copyWith(status: UsersStatus.failure));},
          (users) {

            print("use fetch done ${state.status}");
            emit(users.results.isEmpty
              ? state.copyWith(hasReachedMax: true)
              : state.copyWith(
                  status: UsersStatus.success,
                  users: List.of(state.users)..addAll(users.results),
                  hasReachedMax: false,
                  page: state.page + 1
                ));
          });
    } catch (err) {
      emit(state.copyWith(status: UsersStatus.failure));
        print("use fetch done ${state.status} ${err}");
    }
  }

  // Future<List<Post>> _fetchPosts([int startIndex = 0]) async {

  //  return  ;

  // final response = await httpClient.get(
  //   Uri.https(
  //     'jsonplaceholder.typicode.com',
  //     '/posts',
  //     <String, String>{'_start': '$startIndex', '_limit': '$_postLimit'},
  //   ),
  // );
  // if (response.statusCode == 200) {
  //   final body = json.decode(response.body) as List;
  //   return body.map((dynamic json) {
  //     final map = json as Map<String, dynamic>;
  //     return Post(
  //       id: map['id'] as int,
  //       title: map['title'] as String,
  //       body: map['body'] as String,
  //     );
  //   }).toList();
  // }
  // throw Exception('error fetching posts');
  // }
}

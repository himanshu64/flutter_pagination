
part of 'user_bloc.dart';

sealed class UserEvent extends Equatable {
  @override
  List<Object> get props => [];
}

final class UsersFetched extends UserEvent {}
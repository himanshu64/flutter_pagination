part of 'user_bloc.dart';

enum UsersStatus { initial, success, failure }

final class UserState extends Equatable {
  const UserState({
    this.status = UsersStatus.initial,
    this.users = const <UserModel>[],
    this.hasReachedMax = false,
    this.page = 0
  });

  final UsersStatus status;
  final List<UserModel> users;
  final bool hasReachedMax;
  final int page;

  UserState copyWith({
    UsersStatus? status,
    List<UserModel>? users,
    bool? hasReachedMax,
    int? page
  }) {
    return UserState(
      status: status ?? this.status,
      users: users ?? this.users,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      page: page ?? this.page
    );
  }

  @override
  String toString() {
    return '''UserState { status: $status, hasReachedMax: $hasReachedMax, posts: ${users.length} }''';
  }

  @override
  List<Object> get props => [status, users, hasReachedMax, page];
}
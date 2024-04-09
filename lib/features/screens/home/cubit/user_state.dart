part of 'user_cubit.dart';

enum UserDataStatus { initial, loaded, added, empty, filled }

class UserState extends Equatable {
  final List<Data>? userList;
  final bool hasReachedMax;
  final UserDataStatus userDataStatus;

  UserState(
      {this.userList,
      this.hasReachedMax = false,
      this.userDataStatus = UserDataStatus.initial});

  UserState copyWith(
      {List<Data>? userList,
      bool? hasReachedMax,
      UserDataStatus? userDataStatus}) {
    return UserState(
        userList: userList ?? this.userList,
        hasReachedMax: hasReachedMax ?? this.hasReachedMax,
        userDataStatus: userDataStatus ?? this.userDataStatus);
  }

  @override
  List<Object> get props => [userList ?? {}, hasReachedMax, userDataStatus];
}

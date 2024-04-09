import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../components/custom_progress_loader.dart';
import '../../../components/custom_refresh/src/smart_refresher.dart';
import '../model/users_model.dart';
import '../repository/user_repository_impl.dart';

part 'user_state.dart';

@injectable
class UserCubit extends Cubit<UserState> {
  final UsersRepositoryImp userRepositoryImpl;

  UserCubit(this.userRepositoryImpl) : super(UserState());
  int page = 1;
  late RefreshController refreshController;

  void getUsersList() async {
    showProgressDialog();
    try {
      if (page == 1 || refreshController.isRefresh) {
        page = 1;
        emit(
          state.copyWith(
              hasReachedMax: false,
              userList: [],
              userDataStatus: UserDataStatus.initial),
        );
      }
      if (kDebugMode) {
        log('=================>> story log & page No: $page');
      }
      if (state.hasReachedMax) return;

      final response = await userRepositoryImpl.getUserList({
        "page": page,
      });

      response.fold(
        (failure) {
          dismissProgressDialog();
        },
        (data) {
          dismissProgressDialog();
          if (data.data!.isNotEmpty) {
            page++;
            emit(state.copyWith(
                userList: state.userList!..addAll(data.data!),
                userDataStatus: UserDataStatus.added));
          } else {
            emit(state.copyWith(
                userList: state.userList!..addAll(data.data!),
                hasReachedMax: true,
                userDataStatus: UserDataStatus.filled));
            refreshController.loadNoData();
          }

          refreshController.refreshCompleted();
        },
      );
    } catch (e) {
      //log(e.toString());
      log(" data ===========> Error");
      emit(state.copyWith(hasReachedMax: false));
      refreshController.refreshCompleted();
      refreshController.loadComplete();
    } finally {
      emit(state.copyWith(hasReachedMax: false));
    }
    refreshController.refreshCompleted();
    refreshController.loadComplete();
    dismissProgressDialog();
  }

  void deleteUser(id) async {
    showProgressDialog();
    var response = await userRepositoryImpl.deleteUser(id);
    response.fold((l) {}, (r) {
      state.copyWith(userList: [], userDataStatus: UserDataStatus.empty);
      getUsersList();
    });
  }
}

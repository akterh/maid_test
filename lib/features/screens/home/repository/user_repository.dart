import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:testApp/data/network/api_client.dart';
import 'package:testApp/data/network/api_failure.dart';
import 'package:testApp/features/screens/home/model/users_model.dart';
import 'package:testApp/features/screens/home/repository/user_repository_impl.dart';

import '../../../../data/network/api_exception.dart';
import '../../../../data/network/api_urls.dart';

@Injectable(as: UsersRepositoryImp)
class UsersRepository implements UsersRepositoryImp {
  ApiClient apiClient;

  UsersRepository(this.apiClient);

  @override
  Future<Either<ApiFailure, UsersModel>> getUserList(
      Map<String, dynamic> params) async {
    try {
      final response = await await apiClient.request(
          url: ApiUrls.users, method: Method.get, params: params);

      return Right(UsersModel.fromJson(response));
    } catch (error, stackTrace) {
      log('$stackTrace');
      return Left(ApiException.handle(error).failure);
    }
  }

  @override
  Future<Either<ApiFailure, dynamic>> deleteUser(id) async {
    try {
      final response = await await apiClient.request(
        url: ApiUrls.users + "/$id",
        method: Method.delete,
      );

      return Right(response);
    } catch (error, stackTrace) {
      log('$stackTrace');
      return Left(ApiException.handle(error).failure);
    }
  }

  @override
  Future<Either<ApiFailure, UsersModel>> updateUser(
      Map<String, dynamic> params) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}

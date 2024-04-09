import 'package:dartz/dartz.dart';
import 'package:testApp/features/screens/home/model/users_model.dart';

import '../../../../data/network/api_failure.dart';

abstract class UsersRepositoryImp {
  Future<Either<ApiFailure, UsersModel>> getUserList(
      Map<String, dynamic> params);

  Future<Either<ApiFailure, dynamic>> deleteUser(id);

  Future<Either<ApiFailure, dynamic>> updateUser(
      Map<String, dynamic> params);
}

import 'package:dartz/dartz.dart';

import '../../../../data/network/api_failure.dart';

abstract class LoginRepositoryImp {
  Future<Either<ApiFailure, dynamic>> loginUser(Map<String, dynamic> params);
}

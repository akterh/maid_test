import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:testApp/data/network/api_client.dart';
import 'package:testApp/data/network/api_exception.dart';
import 'package:testApp/data/network/api_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:testApp/data/network/api_urls.dart';

import 'login_repo_imp.dart';

@Injectable(as: LoginRepositoryImp)
class LoginRepository implements LoginRepositoryImp {
  final ApiClient apiClient;

  LoginRepository({required this.apiClient});

  @override
  Future<Either<ApiFailure, dynamic>> loginUser(
      Map<String, dynamic> params) async {
    try {
      final response = await await apiClient.request(
          url: ApiUrls.login, method: Method.post,params: params);

      return Right(response);
    } catch (error, stackTrace) {
      log('$stackTrace');
      return Left(ApiException.handle(error).failure);
    }
  }
}

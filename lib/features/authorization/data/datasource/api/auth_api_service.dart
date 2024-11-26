/** this is real api call example */

// import 'package:dio/dio.dart';
// import 'package:retrofit/retrofit.dart';
// import 'package:salon_common/core/base/utils/api/model/api_response_model.dart';
//
// part 'auth_api_service.g.dart';
//
// @RestApi()
// abstract class AuthApiService {
//   factory AuthApiService(Dio dio, {String baseUrl}) = _AuthApiService;
//
//   @POST("register/")
//   Future<HttpResponse<ApiResponseModel?>> register(
//     @Body("user") AddUserRequest addUserRequest,
//   );
// }

import 'package:triosoft/features/authorization/data/model/request/add_user_request.dart';

/** this is for imitation */

abstract interface class AuthApiService {
  Future<String> registerUser(AddUserRequest addUserRequest);
}

class AuthApiServiceImpl extends AuthApiService {
  @override
  Future<String> registerUser(AddUserRequest addUserRequest) async {
    String? token;
    await Future.delayed(const Duration(seconds: 1));
    token = '${addUserRequest.name} ${addUserRequest.lastName}';
    return token;
  }
}

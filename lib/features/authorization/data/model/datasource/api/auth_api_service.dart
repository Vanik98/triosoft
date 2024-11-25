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
//   @POST("send-sms/")
//   Future<HttpResponse<ApiResponseModel?>> sendSms(
//     @Field("phone_number") String phoneNumber,
//   );
//
//   @POST("login/")
//   Future<HttpResponse<ApiResponseModel?>> login(
//     @Field("phone_number") String phoneNumber,
//     @Field("sms_code") int verificationCode,
//     @Field("firebase_token")String? firebaseToken,
//   );
// }

/** this is for imitation */

abstract interface class AuthApiService {

}


class AuthApiServiceImpl extends AuthApiService {

}

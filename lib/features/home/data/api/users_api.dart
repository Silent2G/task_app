import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:task_app/features/home/data/dto/response/users_response.dart';

part 'users_api.g.dart';

@RestApi()
abstract class UsersApi {
  factory UsersApi(
    Dio dio, {
    String baseUrl,
  }) = _UsersApi;

  @GET('/users')
  Future<List<User>> fetchUsers();
}

import 'package:injectable/injectable.dart';
import 'package:task_app/common/data/api/dio_network_service.dart';
import 'package:task_app/core/constants.dart';
import 'package:task_app/features/home/data/api/users_api.dart';

@module
abstract class InjectableApiModule {
  @injectable
  UsersApi get legacyUserApi => UsersApi(
        DioNetworkService.dio,
        baseUrl: Constants.baseUrl,
      );
}

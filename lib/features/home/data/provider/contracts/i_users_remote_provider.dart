import 'package:fpdart/fpdart.dart';
import 'package:task_app/common/data/dto/response/error_response/i_error_response.dart';
import 'package:task_app/features/home/data/dto/response/users_response.dart';

abstract interface class IUsersRemoteProvider {
  Future<Either<IErrorResponse, List<User>>> fetchUsers();
}

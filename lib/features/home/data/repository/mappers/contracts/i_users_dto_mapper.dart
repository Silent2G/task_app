import 'package:fpdart/fpdart.dart';
import 'package:task_app/common/data/dto/response/error_response/i_error_response.dart';
import 'package:task_app/common/domain/failure/i_failure.dart';
import 'package:task_app/features/home/data/dto/response/users_response.dart';
import 'package:task_app/features/home/domain/entity/user_entity.dart';

abstract interface class IUsersDtoMapper {
  Either<IFailure, List<UserEntity>> mapUsers(
      Either<IErrorResponse, List<User>> response);
}

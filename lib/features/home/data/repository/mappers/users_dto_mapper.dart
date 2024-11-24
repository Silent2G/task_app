import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:task_app/common/data/dto/response/error_response/i_error_response.dart';
import 'package:task_app/common/data/dto/response/error_response/server_error_response.dart';
import 'package:task_app/common/domain/failure/error_codes.dart';
import 'package:task_app/common/domain/failure/i_failure.dart';
import 'package:task_app/common/domain/failure/restrictive/server_failure.dart';
import 'package:task_app/features/home/data/dto/response/users_response.dart';
import 'package:task_app/features/home/data/repository/mappers/contracts/i_users_dto_mapper.dart';
import 'package:task_app/features/home/domain/entity/user_entity.dart';

@Injectable(as: IUsersDtoMapper)
class UsersDtoMapperImpl with ErrorCodes implements IUsersDtoMapper {
  @override
  Either<IFailure, List<UserEntity>> mapUsers(
          Either<IErrorResponse, List<User>> response) =>
      response.fold(
        (errorResponse) {
          if (errorResponse is ServerErrorResponse) {
            return Left(ServerFailure(message: errorResponse.code));
          } else {
            return Left(mapCodeToFailure(errorResponse));
          }
        },
        (successResponse) => right(convert(successResponse)),
      );

  List<UserEntity> convert(List<User> response) {
    return response
        .map(
          (user) => UserEntity.fromJson(
            user.toJson(),
          ),
        )
        .toList();
  }
}

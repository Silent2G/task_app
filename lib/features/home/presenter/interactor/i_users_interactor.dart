import 'package:fpdart/fpdart.dart';
import 'package:task_app/common/domain/failure/i_failure.dart';
import 'package:task_app/features/home/domain/entity/user_entity.dart';

abstract class IUsersInteractor {
  const IUsersInteractor();

  Future<Either<IFailure, List<UserEntity>>> getUsers();
}


import 'package:fpdart/fpdart.dart';
import 'package:task_app/common/domain/failure/i_failure.dart';
import 'package:task_app/features/home/domain/entity/user_entity.dart';

abstract interface class IUsersRepository {
  Future<Either<IFailure, List<UserEntity>>> fetchUsers();
}
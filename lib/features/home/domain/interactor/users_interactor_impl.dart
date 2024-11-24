import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:task_app/common/domain/failure/i_failure.dart';
import 'package:task_app/features/home/domain/entity/user_entity.dart';
import 'package:task_app/features/home/domain/repository/i_users_repository.dart';
import 'package:task_app/features/home/presenter/interactor/i_users_interactor.dart';

@Injectable(as: IUsersInteractor)
class UsersInteractorImpl implements IUsersInteractor {
  final IUsersRepository usersRepository;

  const UsersInteractorImpl(this.usersRepository);

  @override
  Future<Either<IFailure, List<UserEntity>>> getUsers({
    // E.g. token usage
    required String? authToken,
  }) =>
      usersRepository.fetchUsers();
}

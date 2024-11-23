import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:task_app/common/domain/failure/i_failure.dart';
import 'package:task_app/features/home/data/provider/contracts/i_users_remote_provider.dart';
import 'package:task_app/features/home/data/repository/mappers/contracts/i_users_dto_mapper.dart';
import 'package:task_app/features/home/domain/entity/user_entity.dart';

import '../../domain/repository/i_users_repository.dart';

@Injectable(as: IUsersRepository)
class UsersRepositoryImpl implements IUsersRepository {
  final IUsersDtoMapper _mapper;
  final IUsersRemoteProvider _provider;

  UsersRepositoryImpl(this._mapper, this._provider);

  @override
  Future<Either<IFailure, List<UserEntity>>> fetchUsers() async =>
      _mapper.mapUsers(await _provider.fetchUsers());
}

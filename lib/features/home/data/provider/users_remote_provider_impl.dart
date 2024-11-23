import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:task_app/common/data/dto/response/error_response/i_error_response.dart';
import 'package:task_app/common/data/provider/provider_error_mapper.dart';
import 'package:task_app/features/home/data/api/users_api.dart';
import 'package:task_app/features/home/data/dto/response/users_response.dart';
import 'package:task_app/features/home/data/provider/contracts/i_users_remote_provider.dart';

@Injectable(as: IUsersRemoteProvider)
class UsersRemoteProviderImpl implements IUsersRemoteProvider {
  final UsersApi _api;
  final ProviderErrorMapper _errorMapper;

  const UsersRemoteProviderImpl(
    this._api,
    this._errorMapper,
  );

  @override
  Future<Either<IErrorResponse, List<User>>> fetchUsers() async {
    try {
      return right(await _api.fetchUsers());
    } on DioException catch (error) {
      return left(_errorMapper.parseDioErrorToErrorResponse(error));
    }
  }
}

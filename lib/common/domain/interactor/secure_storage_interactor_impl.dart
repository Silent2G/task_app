import 'package:injectable/injectable.dart';
import 'package:task_app/common/domain/repository/i_secure_storage_reposiroy.dart';
import 'package:task_app/common/presenter/interactor/i_secure_storage_interactor.dart';

@Injectable(as: ISecureStorageInteractor)
class SecureStorageInteractorImpl extends ISecureStorageInteractor {
  final ISecureStorageRepository _secureStorageRepository;

  const SecureStorageInteractorImpl(
    this._secureStorageRepository,
  );

  @override
  Future<void> deleteRememberUser() async =>
      _secureStorageRepository.deleteRememberUser();

  @override
  Future<void> deleteToken() async => _secureStorageRepository.deleteToken();

  @override
  Future<String?> getToken() async => _secureStorageRepository.getToken();

  @override
  Future<bool> isRememberUser() async =>
      _secureStorageRepository.isRememberUser();

  @override
  Future<void> saveRememberUser(bool isRemember) async =>
      _secureStorageRepository.saveRememberUser(isRemember);

  @override
  Future<void> saveToken(String token) async =>
      _secureStorageRepository.saveToken(token);
}

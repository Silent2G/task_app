import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:task_app/common/domain/repository/i_secure_storage_reposiroy.dart';

@Injectable(as: ISecureStorageRepository)
class SecureStorageRepositoryImpl implements ISecureStorageRepository {
  SecureStorageRepositoryImpl();

  late final FlutterSecureStorage _storage =
      FlutterSecureStorage(aOptions: _getAndroidOptions);

  AndroidOptions get _getAndroidOptions => const AndroidOptions(
        encryptedSharedPreferences: true,
      );

  @override
  Future<void> deleteRememberUser() async {
    await _storage.delete(key: StorageKey.remeberMe);
  }

  @override
  Future<bool> isRememberUser() async {
    final value = await _storage.read(key: StorageKey.remeberMe);
    return value == 'true';
  }

  @override
  Future<void> saveRememberUser(bool isRemember) async {
    await _storage.write(
      key: StorageKey.remeberMe,
      value: isRemember.toString(),
    );
  }

  @override
  Future<void> deleteToken() async {
    await _storage.delete(key: StorageKey.authToken);
  }

  @override
  Future<String?> getToken() async {
    return await _storage.read(key: StorageKey.authToken);
  }

  @override
  Future<void> saveToken(String token) async {
    await _storage.write(key: StorageKey.authToken, value: token);
  }
}

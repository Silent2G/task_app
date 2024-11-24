abstract class ISecureStorageRepository {
  const ISecureStorageRepository();

  Future<String?> getToken();

  Future<void> saveToken(String token);

  Future<void> deleteToken();

  Future<bool> isRememberUser();

  Future<void> saveRememberUser(bool isRemember);

  Future<void> deleteRememberUser();
}

class StorageKey {
  static const String remeberMe = 'remeberMe';
  static const String authToken = 'authToken';
}

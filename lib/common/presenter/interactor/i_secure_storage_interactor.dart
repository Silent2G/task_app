abstract class ISecureStorageInteractor {
  const ISecureStorageInteractor();

  Future<String?> getToken();

  Future<void> saveToken(String token);

  Future<void> deleteToken();

  Future<bool> isRememberUser();

  Future<void> saveRememberUser(bool isRemember);

  Future<void> deleteRememberUser();
}

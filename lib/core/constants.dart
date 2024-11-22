class Constants {
  static const stage = String.fromEnvironment('STAGE');
  static const baseUrl = String.fromEnvironment('BASE_URL');

  static bool get isNotEmpty => stage.isNotEmpty && baseUrl.isNotEmpty;
}

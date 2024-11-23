abstract class IErrorResponse {
  const IErrorResponse({
    required this.status,
    required this.code,
  });

  final int status;
  final String code;
}
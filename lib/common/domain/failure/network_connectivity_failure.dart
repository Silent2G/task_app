import 'package:task_app/common/domain/failure/i_failure.dart';

class NetworkConnectivityFailure extends IFailure {
  const NetworkConnectivityFailure(
      {super.message = 'Network Connection Failure'});
}

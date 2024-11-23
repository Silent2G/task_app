import 'package:task_app/common/domain/failure/i_failure.dart';

class ServerFailure extends IFailure {
  const ServerFailure({super.message = 'Server Related Failure'});
}

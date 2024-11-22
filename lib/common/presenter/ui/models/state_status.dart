import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_status.freezed.dart';

@freezed
class StateStatus with _$StateStatus {
  const factory StateStatus.loading() = _StateStatusLoading;

  const factory StateStatus.empty() = _StateStatusEmpty;

  const factory StateStatus.failure(String msg) = _StateStatusFailure;

  const factory StateStatus.blockedFailure(int seconds) =
      _StateStatusBlockedFailure;

  const factory StateStatus.serverFailure() = _StateStatusServerFailure;

  const factory StateStatus.networkFailure() = _StateStatusNetworkFailure;

  const factory StateStatus.success() = _StateStatusSuccess;
}

part of 'connection_status_cubit.dart';

@freezed
class ConnectionStatusState with _$ConnectionStatusState {
  const factory ConnectionStatusState.initial() = _Initial;
  const factory ConnectionStatusState.online() = _Online;
  const factory ConnectionStatusState.offline() = _Offline;
}

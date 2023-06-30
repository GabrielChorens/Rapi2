import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/i_services_facade.dart';

part 'connection_status_state.dart';
part 'connection_status_cubit.freezed.dart';

@lazySingleton
class ConnectionStatusCubit extends Cubit<ConnectionStatusState> {
  final IServicesFacade _servicesFacade;
  ConnectionStatusCubit(this._servicesFacade) : super(const ConnectionStatusState.offline());
  
  void checkOnlineStatus() async{
    final result = await _servicesFacade.checkConnecctionServiceStatus();
    result.fold(
      (l) => emit(const ConnectionStatusState.offline()),
      (r) => emit(const ConnectionStatusState.online()),
    );
  }
}
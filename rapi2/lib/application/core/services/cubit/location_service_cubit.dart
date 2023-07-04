import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/i_services_facade.dart';
import '../../../../domain/core/service_failure.dart';

part 'location_service_state.dart';
part 'location_service_cubit.freezed.dart';

@injectable
class LocationServiceCubit extends Cubit<LocationServiceState> {
 final IServicesFacade _servicesFacade;
  LocationServiceCubit(this._servicesFacade) : super(const LocationServiceState.initial());
  

  Future<void> checkLocationStatus() async{
    final result = await _servicesFacade.checkLocationServiceStatus();
    result.fold(
      (l) => emit(const LocationServiceState.locationOff()),
      (r) => emit(const LocationServiceState.locationOn()),
    );
  }

  Future<void> activateLocation() async{
    final result = await _servicesFacade.activateLocationService();
    result.fold(
      (serviceFailure) {
        switch(serviceFailure){
          case LocationPermissionDenied():
            emit (const LocationServiceState.locationPermissionDenied());
          case LocationServiceDisabled():
            emit (const LocationServiceState.locationOff());
          default:
            emit (const LocationServiceState.unknownError());
        }
      },
      (r) => emit(const LocationServiceState.locationOn()),
    );
  }
}
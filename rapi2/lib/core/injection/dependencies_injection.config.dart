// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:get_storage/get_storage.dart' as _i6;
import 'package:image_picker/image_picker.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/core/services/cubit/connection_status_cubit.dart'
    as _i27;
import '../../application/core/services/cubit/location_service_cubit.dart'
    as _i23;
import '../../application/features/splash_screen/cubit/splash_screen_cubit.dart'
    as _i24;
import '../../domain/core/i_services_facade.dart' as _i18;
import '../../domain/features/auth/i_auth_facade.dart' as _i16;
import '../../domain/features/profile/i_profile_facade.dart' as _i28;
import '../../domain/features/splash_screen/i_splash_screen_facade.dart'
    as _i20;
import '../../infraestructure/core/services_facade.dart' as _i19;
import '../../infraestructure/features/auth/auth_facade.dart' as _i17;
import '../../infraestructure/features/profile/profile_facade.dart' as _i29;
import '../../infraestructure/features/profile/repositories/address_respository.dart'
    as _i26;
import '../../infraestructure/features/profile/repositories/user_profile_repository.dart'
    as _i25;
import '../../infraestructure/features/splash_screen/splash_screen_facade.dart'
    as _i21;
import '../../infraestructure/modules/device_services_injection_module.dart'
    as _i30;
import '../../infraestructure/network/api/auth_api_client.dart' as _i14;
import '../../infraestructure/network/api/profile_api_client.dart' as _i10;
import '../../infraestructure/network/dio_provider.dart' as _i5;
import '../../infraestructure/services/auth_management_service.dart' as _i15;
import '../../infraestructure/services/connectivity/internet_connection_status_service.dart'
    as _i8;
import '../../infraestructure/services/location/location_service.dart' as _i9;
import '../../infraestructure/services/storage/address_storage_service.dart'
    as _i13;
import '../../infraestructure/services/storage/image_path_picker.dart' as _i22;
import '../../infraestructure/services/storage/user_storage_service.dart'
    as _i12;
import '../../infraestructure/services/user_injection_service.dart' as _i3;
import '../../presentation/core/theme.dart' as _i11;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final deviceServicesInjectionModule = _$DeviceServicesInjectionModule();
    gh.lazySingleton<_i3.AuthDependencyInjectionService>(
        () => _i3.AuthDependencyInjectionService());
    gh.lazySingleton<_i4.Connectivity>(
        () => deviceServicesInjectionModule.connectivity);
    gh.lazySingleton<_i5.DioProvider>(() => _i5.DioProvider());
    gh.lazySingleton<_i6.GetStorage>(
        () => deviceServicesInjectionModule.storage);
    gh.lazySingleton<_i3.GlobalUserDTOGetterOption>(
        () => _i3.GlobalUserDTOGetterOption());
    gh.lazySingleton<_i7.ImagePicker>(
        () => deviceServicesInjectionModule.imagePicker);
    gh.lazySingleton<_i8.InternetConnectionStatusService>(
        () => _i8.InternetConnectionStatusService(gh<_i4.Connectivity>()));
    gh.lazySingleton<_i9.LocationService>(() => _i9.LocationService());
    gh.lazySingleton<_i10.ProfileApiClient>(
        () => _i10.ProfileApiClient(gh<_i5.DioProvider>()));
    gh.factory<_i11.Rapi2Themes>(() => _i11.Rapi2Themes());
    gh.lazySingleton<_i12.UserStorageService>(
        () => _i12.UserStorageService(gh<_i6.GetStorage>()));
    gh.lazySingleton<_i13.AddressStorageService>(
        () => _i13.AddressStorageService(gh<_i6.GetStorage>()));
    gh.lazySingleton<_i14.AuthApiClient>(
        () => _i14.AuthApiClient(gh<_i5.DioProvider>()));
    gh.lazySingleton<_i15.AuthManagementService>(
        () => _i15.AuthManagementService(
              gh<_i5.DioProvider>(),
              gh<_i3.AuthDependencyInjectionService>(),
            ));
    gh.lazySingleton<_i16.IAuthFacade>(() => _i17.AuthFacade(
          gh<_i14.AuthApiClient>(),
          gh<_i12.UserStorageService>(),
          gh<_i15.AuthManagementService>(),
        ));
    gh.lazySingleton<_i18.IServicesFacade>(() => _i19.ServicesFacade(
          gh<_i8.InternetConnectionStatusService>(),
          gh<_i9.LocationService>(),
        ));
    gh.lazySingleton<_i20.ISplashScreenFacade>(() => _i21.SplashScreenFacade(
          gh<_i12.UserStorageService>(),
          gh<_i16.IAuthFacade>(),
        ));
    gh.lazySingleton<_i22.ImagePathPicker>(
        () => _i22.ImagePathPicker(gh<_i7.ImagePicker>()));
    gh.lazySingleton<_i23.LocationServiceCubit>(
        () => _i23.LocationServiceCubit(gh<_i18.IServicesFacade>()));
    gh.factory<_i24.SplashScreenCubit>(
        () => _i24.SplashScreenCubit(gh<_i20.ISplashScreenFacade>()));
    gh.lazySingleton<_i25.UserProfileRepository>(
        () => _i25.UserProfileRepository(
              gh<_i10.ProfileApiClient>(),
              gh<_i12.UserStorageService>(),
              gh<_i3.GlobalUserDTOGetterOption>(),
              gh<_i3.AuthDependencyInjectionService>(),
              gh<_i15.AuthManagementService>(),
            ));
    gh.lazySingleton<_i26.AddressRepository>(() => _i26.AddressRepository(
          gh<_i10.ProfileApiClient>(),
          gh<_i13.AddressStorageService>(),
        ));
    gh.lazySingleton<_i27.ConnectionStatusCubit>(
        () => _i27.ConnectionStatusCubit(gh<_i18.IServicesFacade>()));
    gh.lazySingleton<_i28.IProfileFacade>(() => _i29.ProfileFacade(
          gh<_i26.AddressRepository>(),
          gh<_i25.UserProfileRepository>(),
          gh<_i22.ImagePathPicker>(),
        ));
    return this;
  }
}

class _$DeviceServicesInjectionModule
    extends _i30.DeviceServicesInjectionModule {}

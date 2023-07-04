// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:get_storage/get_storage.dart' as _i5;
import 'package:image_picker/image_picker.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/core/services/cubit/connection_status_cubit.dart'
    as _i25;
import '../../application/core/services/cubit/location_service_cubit.dart'
    as _i21;
import '../../application/features/splash_screen/cubit/splash_screen_cubit.dart'
    as _i22;
import '../../domain/core/i_services_facade.dart' as _i16;
import '../../domain/features/auth/i_auth_facade.dart' as _i14;
import '../../domain/features/profile/i_profile_facade.dart' as _i26;
import '../../domain/features/splash_screen/i_splash_screen_facade.dart'
    as _i18;
import '../../infraestructure/core/services_facade.dart' as _i17;
import '../../infraestructure/features/auth/auth_facade.dart' as _i15;
import '../../infraestructure/features/profile/profile_facade.dart' as _i27;
import '../../infraestructure/features/profile/repositories/address_respository.dart'
    as _i24;
import '../../infraestructure/features/profile/repositories/user_profile_repository.dart'
    as _i23;
import '../../infraestructure/features/splash_screen/splash_screen_facade.dart'
    as _i19;
import '../../infraestructure/modules/device_services_injection_module.dart'
    as _i28;
import '../../infraestructure/network/api/auth_api_client.dart' as _i12;
import '../../infraestructure/network/api/profile_api_client.dart' as _i9;
import '../../infraestructure/network/dio_provider.dart' as _i4;
import '../../infraestructure/services/auth_management_service.dart' as _i13;
import '../../infraestructure/services/connectivity/internet_connection_status_service.dart'
    as _i7;
import '../../infraestructure/services/location/location_service.dart' as _i8;
import '../../infraestructure/services/storage/address_storage_service.dart'
    as _i11;
import '../../infraestructure/services/storage/image_path_picker.dart' as _i20;
import '../../infraestructure/services/storage/user_storage_service.dart'
    as _i10;
import '../../infraestructure/services/user_injection_service.dart' as _i3;

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
    gh.lazySingleton<_i4.DioProvider>(() => _i4.DioProvider());
    gh.lazySingleton<_i5.GetStorage>(
        () => deviceServicesInjectionModule.storage);
    gh.lazySingleton<_i3.GlobalUserDTOGetterOption>(
        () => _i3.GlobalUserDTOGetterOption());
    gh.lazySingleton<_i6.ImagePicker>(
        () => deviceServicesInjectionModule.imagePicker);
    gh.lazySingleton<_i7.InternetConnectionStatusService>(
        () => _i7.InternetConnectionStatusService());
    gh.lazySingleton<_i8.LocationService>(() => _i8.LocationService());
    gh.lazySingleton<_i9.ProfileApiClient>(
        () => _i9.ProfileApiClient(gh<_i4.DioProvider>()));
    gh.lazySingleton<_i10.UserStorageService>(
        () => _i10.UserStorageService(gh<_i5.GetStorage>()));
    gh.lazySingleton<_i11.AddressStorageService>(
        () => _i11.AddressStorageService(gh<_i5.GetStorage>()));
    gh.lazySingleton<_i12.AuthApiClient>(
        () => _i12.AuthApiClient(gh<_i4.DioProvider>()));
    gh.lazySingleton<_i13.AuthManagementService>(
        () => _i13.AuthManagementService(
              gh<_i4.DioProvider>(),
              gh<_i3.AuthDependencyInjectionService>(),
            ));
    gh.lazySingleton<_i14.IAuthFacade>(() => _i15.AuthFacade(
          gh<_i12.AuthApiClient>(),
          gh<_i10.UserStorageService>(),
          gh<_i13.AuthManagementService>(),
        ));
    gh.lazySingleton<_i16.IServicesFacade>(() => _i17.ServicesFacade(
          gh<_i7.InternetConnectionStatusService>(),
          gh<_i8.LocationService>(),
        ));
    gh.lazySingleton<_i18.ISplashScreenFacade>(() => _i19.SplashScreenFacade(
          gh<_i10.UserStorageService>(),
          gh<_i14.IAuthFacade>(),
        ));
    gh.lazySingleton<_i20.ImagePathPicker>(
        () => _i20.ImagePathPicker(gh<_i6.ImagePicker>()));
    gh.factory<_i21.LocationServiceCubit>(
        () => _i21.LocationServiceCubit(gh<_i16.IServicesFacade>()));
    gh.factory<_i22.SplashScreenCubit>(
        () => _i22.SplashScreenCubit(gh<_i18.ISplashScreenFacade>()));
    gh.lazySingleton<_i23.UserProfileRepository>(
        () => _i23.UserProfileRepository(
              gh<_i9.ProfileApiClient>(),
              gh<_i10.UserStorageService>(),
              gh<_i3.GlobalUserDTOGetterOption>(),
              gh<_i3.AuthDependencyInjectionService>(),
              gh<_i13.AuthManagementService>(),
            ));
    gh.lazySingleton<_i24.AddressRepository>(() => _i24.AddressRepository(
          gh<_i9.ProfileApiClient>(),
          gh<_i11.AddressStorageService>(),
        ));
    gh.lazySingleton<_i25.ConnectionStatusCubit>(
        () => _i25.ConnectionStatusCubit(gh<_i16.IServicesFacade>()));
    gh.lazySingleton<_i26.IProfileFacade>(() => _i27.ProfileFacade(
          gh<_i24.AddressRepository>(),
          gh<_i23.UserProfileRepository>(),
          gh<_i20.ImagePathPicker>(),
        ));
    return this;
  }
}

class _$DeviceServicesInjectionModule
    extends _i28.DeviceServicesInjectionModule {}

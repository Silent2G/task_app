// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'common/data/api/injectable_api_module.dart' as _i1000;
import 'common/data/provider/provider_error_mapper.dart' as _i125;
import 'features/home/data/api/users_api.dart' as _i908;
import 'features/home/data/provider/contracts/i_users_remote_provider.dart'
    as _i1042;
import 'features/home/data/provider/users_remote_provider_impl.dart' as _i28;
import 'features/home/data/repository/mappers/contracts/i_users_dto_mapper.dart'
    as _i574;
import 'features/home/data/repository/mappers/users_dto_mapper.dart' as _i633;
import 'features/home/data/repository/users_repository_impl.dart' as _i627;
import 'features/home/domain/interactor/users_interactor_impl.dart' as _i853;
import 'features/home/domain/repository/i_users_repository.dart' as _i21;
import 'features/home/presenter/interactor/i_users_interactor.dart' as _i682;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final injectableApiModule = _$InjectableApiModule();
  gh.factory<_i125.ProviderErrorMapper>(
      () => const _i125.ProviderErrorMapper());
  gh.factory<_i908.UsersApi>(() => injectableApiModule.legacyUserApi);
  gh.factory<_i1042.IUsersRemoteProvider>(() => _i28.UsersRemoteProviderImpl(
        gh<_i908.UsersApi>(),
        gh<_i125.ProviderErrorMapper>(),
      ));
  gh.factory<_i574.IUsersDtoMapper>(() => _i633.UsersDtoMapperImpl());
  gh.factory<_i21.IUsersRepository>(() => _i627.UsersRepositoryImpl(
        gh<_i574.IUsersDtoMapper>(),
        gh<_i1042.IUsersRemoteProvider>(),
      ));
  gh.factory<_i682.IUsersInteractor>(
      () => _i853.UsersInteractorImpl(gh<_i21.IUsersRepository>()));
  return getIt;
}

class _$InjectableApiModule extends _i1000.InjectableApiModule {}

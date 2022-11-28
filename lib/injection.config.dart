// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'data/api/api_client.dart' as _i3;
import 'data/services/world_time_service.dart' as _i5;
import 'domain/repositories/world_time_repository.dart' as _i6;
import 'features/home/bloc/home_bloc.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.ApiClient>(_i3.ApiClient());
  gh.factory<_i4.HomeBloc>(() => _i4.HomeBloc());
  gh.factory<_i5.WorldTimeService>(
      () => _i5.WorldTimeService(get<_i3.ApiClient>()));
  gh.factory<_i6.WorldTimeRepository>(
      () => _i6.WorldTimeRepository(get<_i5.WorldTimeService>()));
  return get;
}

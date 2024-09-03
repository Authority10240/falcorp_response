// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'features/home/data/repository_impl/home_repository_impl/load_calender_events_repository_impl.dart'
    as _i6;
import 'features/home/data/source/remote/home_service.dart' as _i4;
import 'features/home/domain/repository/home_repository/load_calender_events_repository.dart'
    as _i5;
import 'features/home/domain/use_cases/home_usecase/load_calender_events_usecase.dart'
    as _i7;
import 'features/home/presentation/bloc/home_bloc.dart' as _i8;
import 'injection.dart' as _i9;

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
    final registerModule = _$RegisterModule();
    gh.factory<_i3.Dio>(() => registerModule.dio);
    gh.factory<_i4.HomeService>(() => _i4.HomeService(gh<_i3.Dio>()));
    gh.factory<_i5.LoadCalenderEventsRepository>(() =>
        _i6.LoadCalenderEventsRepositoryImpl(
            homeService: gh<_i4.HomeService>()));
    gh.factory<_i7.LoadCalenderEventsUseCase>(() =>
        _i7.LoadCalenderEventsUseCase(
            loadCalenderEventsRepository:
                gh<_i5.LoadCalenderEventsRepository>()));
    gh.factory<_i8.HomeBloc>(() => _i8.HomeBloc(
        loadCalenderEventsUseCase: gh<_i7.LoadCalenderEventsUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i9.RegisterModule {}

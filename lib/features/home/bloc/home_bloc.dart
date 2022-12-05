import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:world_time_app_bloc/domain/core/core.dart';
import 'package:world_time_app_bloc/domain/entities/timezone.dart';
import 'package:world_time_app_bloc/domain/repositories/world_time_repository_interface.dart';
import 'package:world_time_app_bloc/domain/router/router.dart';
import 'package:world_time_app_bloc/domain/router/router.gr.dart';

import '../../../domain/repositories/world_time_repository.dart';
import '../../../injection.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.initial()) {
    repository = getIt<WorldTimeRepository>();
    on<HomeStarted>(_started);
    on<HomeGetTimezones>(_getTimezones);
    on<HomeFilterTimezone>(_filterTimezones);
    on<HomeGoToDetail>(_goToDetail);
  }

  late WorldTimeRepositoryInterface repository;

  void _started(
    HomeStarted event,
    Emitter<HomeState> emit,
  ) {
    emit(const HomeState.initial());
  }

  Future<void> _getTimezones(
    HomeGetTimezones event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loading());
    final result = await repository.getAllTimezones();
    result.when(
      success: (success) {
        emit(HomeState.loaded(timezones: success));
      },
      failure: (failure) {
        emit(const HomeState.onError("could not loaded"));
      },
    );
  }

  Future<void> _filterTimezones(
    HomeFilterTimezone event,
    Emitter<HomeState> emit,
  ) async {
    if (state is _Loaded) {
      final timezones = (state as _Loaded).timezones.toList();
      final filtered = (state as _Loaded).filtered;
      if (filtered != null) filtered.toList().clear();
      var valueList = timezones
          .map(
            (e) =>
                "${e.area.successOrNullable}/${e.location.successOrNullable}",
          )
          .toList();
      valueList = valueList
          .where(
            (element) => element.toLowerCase().contains(
                  event.param.trim().toLowerCase(),
                ),
          )
          .toList();
      final filteredList = valueList
          .map(
            (e) => Timezone(
              id: UniqueID(),
              area: StringValue(fieldValue: e.split("/")[0]),
              location: StringValue(fieldValue: e.split("/")[1]),
            ),
          )
          .toList();
      emit(HomeState.loaded(timezones: timezones, filtered: filteredList));
    } else {
      emit(const HomeState.onError("could not loaded"));
    }
  }

  Future<void> _goToDetail(
    HomeGoToDetail event,
    Emitter<HomeState> emit,
  ) async {
    final timezone = event.param;
    if (timezone.area.isValid() && timezone.location.isValid()) {
      final detail = await repository.getSingleTimezone(
        timezone.area.successOrNullable!,
        timezone.location.successOrNullable!,
      );
      detail.when(
        success: (success) {
          appRouter.push(TimezoneDetailRoute(detail: success));
        },
        failure: (failure) {
          appRouter.onpenSnackBar(
            failure.errorMessage,
            type: SnackBarType.error,
          );
        },
      );
    }
  }
}

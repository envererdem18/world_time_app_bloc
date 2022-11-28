part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.onStarted() = HomeStarted;
  const factory HomeEvent.getTimezones() = HomeGetTimezones;
  const factory HomeEvent.filter(String param) = HomeFilterTimezone;
  const factory HomeEvent.goToDetail(Timezone param) = HomeGoToDetail;
}

part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.onError(String message) = _OnError;
  const factory HomeState.loaded({
    required List<Timezone> timezones,
    List<Timezone>? filtered,
  }) = _Loaded;
}

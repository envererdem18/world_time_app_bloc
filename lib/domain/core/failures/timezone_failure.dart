import 'package:freezed_annotation/freezed_annotation.dart';

part 'timezone_failure.freezed.dart';

@freezed
class TimezoneFailure with _$TimezoneFailure {
  const factory TimezoneFailure.areaCouldNotresolved({
    @Default('Area could not resolved.') String errorMessage,
  }) = _AreaCouldNotResolved;
  const factory TimezoneFailure.locationCouldNotResolved({
    @Default('Location could not resolved.') String errorMessage,
  }) = _LocationCouldNotResolved;
  const factory TimezoneFailure.couldNotFind({
    @Default('No results found.') String errorMessage,
  }) = _CouldNotFind;
  const factory TimezoneFailure.unlknownError({
    @Default('Unknown error occured.') String errorMessage,
  }) = _UnknownError;
}

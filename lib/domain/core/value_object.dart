import 'package:equatable/equatable.dart';
import 'package:world_time_app_bloc/domain/core/value_failure.dart';

import 'either.dart';
import 'errors.dart';

abstract class ValueObject<T> extends Equatable {
  const ValueObject();
  Either<ValueFailure, T> get value;

  bool isValid() {
    return value.when(success: (success) => true, failure: (failure) => false);
  }

  T getOrCrash() {
    return value.when(
      success: (success) => success,
      failure: (failure) => throw UnExpectedValueError(failure),
    );
  }

  ValueFailure get failure {
    return value.when(
      success: (success) =>
          throw Exception("Failure is not defined. Its an error by developer."),
      failure: (failure) => failure,
    );
  }

  ValueFailure? get failureOrNullable {
    return value.whenOrNull(
      failure: (failure) => failure,
    );
  }

  T? get successOrNullable {
    return value.whenOrNull(
      success: (success) => success,
    );
  }

  T successOrElse({required T Function() orElse}) {
    return value.maybeWhen(
      success: (success) => success,
      orElse: orElse,
    );
  }

  @override
  List<Object?> get props => [value];
}

class UniqueID extends ValueObject<int> {
  @override
  final Either<ValueFailure, int> value;

  factory UniqueID() => UniqueID._(validateID(null));
  factory UniqueID.fromID(int? id) => UniqueID._(validateID(id));

  static Either<ValueFailure, int> validateID(int? id) {
    return id != null
        ? Either.success(id)
        : const Either.failure(ValueFailure.invalidID());
  }

  const UniqueID._(this.value);
}

import 'value_failure.dart';

class UnExpectedValueError implements Exception {
  final ValueFailure valueFailure;

  UnExpectedValueError(this.valueFailure);

  @override
  String toString() {
    const message = "An unexpected ValueFailure has occured.";
    return Error.safeToString('$message Failure is $valueFailure');
  }
}

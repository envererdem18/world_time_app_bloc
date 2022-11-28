import '../either.dart';
import '../value_failure.dart';
import '../value_object.dart';
import 'value_validators.dart';

class StringValue extends ValueObject<String> {
  @override
  final Either<ValueFailure, String> value;

  factory StringValue({String? fieldValue}) {
    return StringValue._(emptyString(fieldValue));
  }

  String get valueOrPlaceholder => successOrElse(orElse: () => 'N/A');

  const StringValue._(this.value);
}

class StringListValue extends ValueObject<List<String>> {
  @override
  final Either<ValueFailure, List<String>> value;

  factory StringListValue({List<String>? fieldValue}) {
    return StringListValue._(emptyStringList(fieldValue));
  }

  const StringListValue._(this.value);
}

class DateValue extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure, DateTime> value;

  factory DateValue({String? date}) {
    return DateValue._(validateDate(date));
  }

  const DateValue._(this.value);
}

class BoolValue extends ValueObject<bool> {
  @override
  final Either<ValueFailure, bool> value;

  factory BoolValue({bool? value}) {
    return BoolValue._(validateBoolValue(value));
  }

  const BoolValue._(this.value);
}

class DoubleValue extends ValueObject<double> {
  @override
  final Either<ValueFailure, double> value;

  factory DoubleValue({double? value}) {
    return DoubleValue._(validateDoubleValue(value));
  }

  const DoubleValue._(this.value);
}

class IntValue extends ValueObject<int> {
  @override
  final Either<ValueFailure, int> value;

  factory IntValue({int? value}) {
    return IntValue._(validateIntValue(value));
  }

  const IntValue._(this.value);
}

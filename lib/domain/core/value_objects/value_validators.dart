import '../either.dart';
import '../value_failure.dart';

Either<ValueFailure, String> emptyString(
  String? field, {
  String? errorMessage,
}) {
  return field?.isNotEmpty ?? false
      ? Either.success(field!)
      : Either.failure(
          ValueFailure.emptyString(
            errorMessage: errorMessage ?? 'String value is empty.',
          ),
        );
}

Either<ValueFailure, List<String>> emptyStringList(
  List<String>? listString,
) {
  return listString?.isNotEmpty ?? false
      ? Either.success(listString!)
      : const Either.failure(
          ValueFailure.emptyString(
            errorMessage: 'String list is null or empty.',
          ),
        );
}

Either<ValueFailure, DateTime> validateDate(String? date) {
  if (date == null) {
    return const Either.failure(
      ValueFailure.invalidDate('Date value is null.'),
    );
  }

  final dateTime = DateTime.tryParse(date);

  return dateTime != null
      ? Either.success(dateTime.toLocal())
      : const Either.failure(
          ValueFailure.invalidDate('Failed to parse date. Date is invalid'),
        );
}

Either<ValueFailure, bool> validateBoolValue(bool? value) {
  return value != null
      ? Either.success(value)
      : const Either.failure(
          ValueFailure.nullValue(
            errorMessage: 'Bool value is null',
          ),
        );
}

Either<ValueFailure, double> validateDoubleValue(double? value) {
  return value != null
      ? Either.success(value)
      : const Either.failure(
          ValueFailure.nullValue(
            errorMessage: 'Double value is null',
          ),
        );
}

Either<ValueFailure, int> validateIntValue(int? value) {
  return value != null
      ? Either.success(value)
      : const Either.failure(
          ValueFailure.nullValue(
            errorMessage: 'Int value is null',
          ),
        );
}

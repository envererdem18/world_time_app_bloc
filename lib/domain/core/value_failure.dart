import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
class ValueFailure with _$ValueFailure {
  const factory ValueFailure.emptyString({@Default('') String errorMessage}) =
      _EmptyString;
  const factory ValueFailure.emptyStringList({
    @Default('') String errorMessage,
  }) = _EmptyStringList;
  const factory ValueFailure.nullValue({@Default('') String errorMessage}) =
      _NullValue;
  const factory ValueFailure.invalidID({@Default('') String errorMessage}) =
      _InvalidID;
  const factory ValueFailure.numberCodeNotSelected([
    @Default('Number code required:') String errorMessage,
  ]) = _CountryCodeNotSelected;
  const factory ValueFailure.invalidEmail([
    @Default('Invalid email:') String errorMessage,
  ]) = _InvalidEmail;
  const factory ValueFailure.invalidName([
    @Default('Invalid name:') String errorMessage,
  ]) = _InvlaidName;
  const factory ValueFailure.genderNotSelected([
    @Default('Select gender:') String errorMessage,
  ]) = _GenderNotSelected;
  const factory ValueFailure.countryNotSelected([
    @Default('Select country:') String errorMessage,
  ]) = _CountryNotSelected;
  const factory ValueFailure.cityNotSelected([
    @Default('Select city:') String errorMessage,
  ]) = _CityNotSelected;
  const factory ValueFailure.failedToLoadCities([
    @Default('Failed to load cities') String errorMessage,
    @Default('You can continue now but you need to fill it later.')
        String description,
  ]) = _FailedToLoadCities;
  const factory ValueFailure.otpIsNot6Digits([
    @Default('') String errorMessage,
  ]) = _OtpIsNot6Digits;
  const factory ValueFailure.otpDoesNotMatch([
    @Default('Otp code is wrong:') String errorMessage,
  ]) = _OtpDoesNotMatch;
  const factory ValueFailure.otpRequired([
    @Default('Otp code is required:') String errorMessage,
  ]) = _OtpRequired;
  const factory ValueFailure.noImages([
    @Default('') String errorMessage,
  ]) = NoImages;
  const factory ValueFailure.loginTypeNotSelected([
    @Default('Login type required:') String errorMessage,
  ]) = _LoginTypeNotSelected;
  const factory ValueFailure.invalidUrl([
    @Default('Invalid Url') String errorMessage,
  ]) = _InvalidUrl;
  const factory ValueFailure.invalidRatingRange([
    @Default('Rating is out of range.') String errorMessage,
  ]) = _InvalidRatingRange;
  const factory ValueFailure.discountLessThanZero([
    @Default('') String errorMessage,
  ]) = _DiscountLessThanZero;
  const factory ValueFailure.outOfStock([
    @Default('Out of stock') String errorMessage,
  ]) = _OutOfStock;
  const factory ValueFailure.invalidDate([
    @Default('') String errorMessage,
  ]) = _InvalidDate;
  const factory ValueFailure.invalidProductType([
    @Default('Product type is unsupported. Invalid type') String errorMessage,
  ]) = _InvalidProductType;
  const factory ValueFailure.invalidLatLong([
    @Default('') String errorMessage,
  ]) = _InvalidLatLong;
  const factory ValueFailure.invalidStoreStatusType([
    @Default('Invalid store status. Unsupported store status type.')
        String errorMessage,
  ]) = _InvalidStoreStatusType;
  const factory ValueFailure.invalidOrderStatusType([
    @Default('Order status type is unsupported. Invalid type')
        String errorMessage,
  ]) = _InvalidOrderStatusType;
  const factory ValueFailure.invalidTimelineStepStatus([
    @Default('Order timeline status type is unsupported. Invalid type')
        String errorMessage,
  ]) = _InvalidTimelineStepStatus;
  const factory ValueFailure.invalidOrderSummaryItem([
    @Default('') String errorMessage,
  ]) = _InvalidOrderSummaryItem;
  const factory ValueFailure.invalidCardHolderName([
    @Default('Invalid card holder name:') String errorMessage,
  ]) = _InvalidCardHolderName;
  const factory ValueFailure.invalidCardType([
    @Default('Invalid card type:') String errorMessage,
  ]) = _InvalidCardType;
  const factory ValueFailure.invalidCardNumber([
    @Default('Invalid card number:') String errorMessage,
  ]) = _InvalidCardNumber;
  const factory ValueFailure.invalidCardDate([
    @Default('Invalid card date:') String errorMessage,
  ]) = _InvalidCardDate;
  const factory ValueFailure.invalidCardCvv([
    @Default('Invalid card cvv:') String errorMessage,
  ]) = _InvalidCardCvv;
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:world_time_app_bloc/domain/core/core.dart';
import 'package:world_time_app_bloc/domain/entities/timezone.dart';

part 'timezone_dto.g.dart';

@JsonSerializable()
class TimezoneDto {
  final String value;

  TimezoneDto(this.value);

  factory TimezoneDto.fromJson(Map<String, dynamic> json) =>
      _$TimezoneDtoFromJson(json);
  Map<String, dynamic> toJson() => _$TimezoneDtoToJson(this);
}

extension TimezoneDtoX on TimezoneDto {
  Timezone toDomain() {
    return Timezone(
      id: UniqueID(),
      area: StringValue(
        fieldValue: value.contains("/") ? value.split('/')[0] : value,
      ),
      location: StringValue(
        fieldValue:
            value.contains("/") ? value.split('/').sublist(1).join("/") : value,
      ),
    );
  }
}

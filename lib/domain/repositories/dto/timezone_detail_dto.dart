import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:world_time_app_bloc/domain/core/core.dart';
import 'package:world_time_app_bloc/domain/entities/timezone_detail.dart';

part 'timezone_detail_dto.g.dart';

@JsonSerializable()
class TimezoneDetailDto {
  final String? abbreviation;
  @JsonKey(name: 'client_ip')
  final String? clientIp;
  final String? datetime;
  @JsonKey(name: 'day_of_week')
  final int? dayOfWeek;
  @JsonKey(name: 'day_of_year')
  final int? dayOfYear;
  final bool? dst;
  @JsonKey(name: 'dst_from')
  final String? dstFrom;
  @JsonKey(name: 'dst_offset')
  final int? dstOffset;
  @JsonKey(name: 'dst_until')
  final String? dstUntil;
  @JsonKey(name: 'raw_offset')
  final int? rawOffset;
  final String? timezone;
  final int? unixtime;
  @JsonKey(name: 'utc_datetime')
  final String? utcDatetime;
  @JsonKey(name: 'utc_offset')
  final String? utcOffset;
  @JsonKey(name: 'week_number')
  final int? weekNumber;

  TimezoneDetailDto({
    this.abbreviation,
    this.clientIp,
    this.datetime,
    this.dayOfWeek,
    this.dayOfYear,
    this.dst,
    this.dstFrom,
    this.dstOffset,
    this.dstUntil,
    this.rawOffset,
    this.timezone,
    this.unixtime,
    this.utcDatetime,
    this.utcOffset,
    this.weekNumber,
  });

  factory TimezoneDetailDto.fromJson(Map<String, dynamic> json) =>
      _$TimezoneDetailDtoFromJson(json);
  Map<String, dynamic> toJson() => _$TimezoneDetailDtoToJson(this);
}

extension TimezoneDetailDtoX on TimezoneDetailDto {
  TimezoneDetail toDomain() {
    return TimezoneDetail(
      id: UniqueID(),
      abbreviation: StringValue(fieldValue: abbreviation),
      clientIp: StringValue(fieldValue: clientIp),
      datetime: StringValue(fieldValue: datetime),
      dstFrom: StringValue(fieldValue: dstFrom),
      dstUntil: StringValue(fieldValue: dstUntil),
      timezone: StringValue(fieldValue: timezone),
      utcDatetime: StringValue(fieldValue: utcDatetime),
      utcOffset: StringValue(fieldValue: utcOffset),
      dayOfWeek: IntValue(value: dayOfWeek),
      dayOfYear: IntValue(value: dayOfYear),
      dstOffset: IntValue(value: dstOffset),
      rawOffset: IntValue(value: rawOffset),
      unixtime: IntValue(value: unixtime),
      weekNumber: IntValue(value: weekNumber),
      dst: BoolValue(value: dst),
    );
  }
}

import 'package:world_time_app_bloc/domain/core/core.dart';

class TimezoneDetail extends Entity {
  @override
  final UniqueID id;
  final StringValue abbreviation;
  final StringValue clientIp;
  final StringValue datetime;
  final IntValue dayOfWeek;
  final IntValue dayOfYear;
  final BoolValue dst;
  final StringValue dstFrom;
  final IntValue dstOffset;
  final StringValue dstUntil;
  final IntValue rawOffset;
  final StringValue timezone;
  final IntValue unixtime;
  final StringValue utcDatetime;
  final StringValue utcOffset;
  final IntValue weekNumber;

  bool get isValid {
    return abbreviation.isValid() &&
        clientIp.isValid() &&
        datetime.isValid() &&
        dayOfWeek.isValid() &&
        dayOfYear.isValid() &&
        dst.isValid() &&
        dstFrom.isValid() &&
        dstOffset.isValid() &&
        dstUntil.isValid() &&
        rawOffset.isValid() &&
        timezone.isValid() &&
        unixtime.isValid() &&
        utcDatetime.isValid() &&
        utcOffset.isValid() &&
        weekNumber.isValid();
  }

  factory TimezoneDetail({
    required UniqueID id,
    required StringValue abbreviation,
    required StringValue clientIp,
    required StringValue datetime,
    required IntValue dayOfWeek,
    required IntValue dayOfYear,
    required BoolValue dst,
    required StringValue dstFrom,
    required IntValue dstOffset,
    required StringValue dstUntil,
    required IntValue rawOffset,
    required StringValue timezone,
    required IntValue unixtime,
    required StringValue utcDatetime,
    required StringValue utcOffset,
    required IntValue weekNumber,
  }) =>
      TimezoneDetail._(
        id: id,
        abbreviation: abbreviation,
        clientIp: clientIp,
        datetime: datetime,
        dayOfWeek: dayOfWeek,
        dayOfYear: dayOfYear,
        dst: dst,
        dstFrom: dstFrom,
        dstOffset: dstOffset,
        dstUntil: dstUntil,
        rawOffset: rawOffset,
        timezone: timezone,
        unixtime: unixtime,
        utcDatetime: utcDatetime,
        utcOffset: utcOffset,
        weekNumber: weekNumber,
      );

  TimezoneDetail._({
    required this.id,
    required this.abbreviation,
    required this.clientIp,
    required this.datetime,
    required this.dayOfWeek,
    required this.dayOfYear,
    required this.dst,
    required this.dstFrom,
    required this.dstOffset,
    required this.dstUntil,
    required this.rawOffset,
    required this.timezone,
    required this.unixtime,
    required this.utcDatetime,
    required this.utcOffset,
    required this.weekNumber,
  });
}

import 'package:world_time_app_bloc/data/services/world_time_service.dart';
import 'package:world_time_app_bloc/domain/core/either.dart';
import 'package:world_time_app_bloc/domain/core/failures/timezone_failure.dart';

import '../entities/timezone.dart';
import '../entities/timezone_detail.dart';

abstract class WorldTimeRepositoryInterface {
  WorldTimeService get worldTimeService;
  Future<Either<TimezoneFailure, List<Timezone>>> getAllTimezones();
  Future<Either<TimezoneFailure, List<Timezone>>> getTimezones(String area);
  Future<Either<TimezoneFailure, TimezoneDetail>> getSingleTimezone(
    String area,
    String location,
  );
  Future<Either<TimezoneFailure, TimezoneDetail>> getUserTimezone();
}

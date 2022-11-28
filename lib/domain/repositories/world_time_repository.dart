import 'package:injectable/injectable.dart';
import 'package:world_time_app_bloc/data/services/world_time_service.dart';
import 'package:world_time_app_bloc/domain/repositories/dto/timezone_detail_dto.dart';
import 'package:world_time_app_bloc/domain/repositories/dto/timezone_dto.dart';
import 'package:world_time_app_bloc/domain/repositories/world_time_repository_interface.dart';

import '../core/either.dart';
import '../core/failures/timezone_failure.dart';
import '../entities/timezone.dart';
import '../entities/timezone_detail.dart';

// @Injectable(as: WorldTimeRepositoryInterface)
@injectable
class WorldTimeRepository implements WorldTimeRepositoryInterface {
  @override
  final WorldTimeService worldTimeService;

  WorldTimeRepository(this.worldTimeService);

  @override
  Future<Either<TimezoneFailure, List<Timezone>>> getAllTimezones() async {
    final response = await worldTimeService.getAllTimezones();
    final timezones = List<Timezone>.unmodifiable(
      response
          .map((timezoneDto) => timezoneDto.toDomain())
          .where((timezone) => timezone.isValid)
          .toList(),
    );
    if (timezones.isEmpty) {
      return const Either.failure(TimezoneFailure.couldNotFind());
    }
    return Either.success(timezones);
  }

  @override
  Future<Either<TimezoneFailure, List<Timezone>>> getTimezones(
    String area,
  ) async {
    final response = await worldTimeService.getTimezones(area);
    final timezones = List<Timezone>.unmodifiable(
      response
          .map((timezoneDto) => timezoneDto.toDomain())
          .where((timezone) => timezone.isValid)
          .toList(),
    );
    if (timezones.isEmpty) {
      return const Either.failure(TimezoneFailure.couldNotFind());
    }
    return Either.success(timezones);
  }

  @override
  Future<Either<TimezoneFailure, TimezoneDetail>> getSingleTimezone(
    String area,
    String location,
  ) async {
    final detailDto = await worldTimeService.getSingleTimezone(area, location);
    final detail = detailDto.toDomain();
    // if (!detail.isValid) {
    //   return const Either.failure(TimezoneFailure.unlknownError());
    // }
    return Either.success(detail);
  }

  @override
  Future<Either<TimezoneFailure, TimezoneDetail>> getUserTimezone() async {
    final detailDto = await worldTimeService.getUserTimezone();
    final detail = detailDto.toDomain();
    if (!detail.isValid) {
      return const Either.failure(TimezoneFailure.unlknownError());
    }
    return Either.success(detail);
  }
}

import 'package:injectable/injectable.dart';
import 'package:world_time_app_bloc/domain/repositories/dto/timezone_detail_dto.dart';
import 'package:world_time_app_bloc/domain/repositories/dto/timezone_dto.dart';

import '../api/api_client.dart';

@injectable
class WorldTimeService {
  final ApiClient apiClient;

  WorldTimeService(this.apiClient);

  Future<List<TimezoneDto>> getAllTimezones() async {
    final timezones = await handleApiErrors(
      method: apiClient.endPoints.getAllTimezones(),
    );
    final response = timezones.map(TimezoneDto.new).toList();
    return response;
  }

  Future<List<TimezoneDto>> getTimezones(String area) async {
    final timezones = await handleApiErrors(
      method: apiClient.endPoints.getTimezones(area: area),
    );
    final response = timezones.map(TimezoneDto.new).toList();
    return response;
  }

  Future<TimezoneDetailDto> getSingleTimezone(
    String area,
    String location,
  ) async {
    final timezone = await handleApiErrors(
      method:
          apiClient.endPoints.getSingleTimezone(area: area, location: location),
    );
    final detail = TimezoneDetailDto.fromJson(timezone);
    return detail;
  }

  Future<TimezoneDetailDto> getUserTimezone() async {
    final timezone = await handleApiErrors(
      method: apiClient.endPoints.getUserTimezone(),
    );
    final detail = TimezoneDetailDto.fromJson(timezone);
    return detail;
  }
}

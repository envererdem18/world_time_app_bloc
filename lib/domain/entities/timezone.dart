import 'package:world_time_app_bloc/domain/core/core.dart';

class Timezone extends Entity {
  @override
  final UniqueID id;
  final StringValue area;
  final StringValue location;

  bool get isValid {
    return area.isValid() && location.isValid();
  }

  factory Timezone({
    required UniqueID id,
    required StringValue area,
    required StringValue location,
  }) =>
      Timezone._(
        id: id,
        area: area,
        location: location,
      );

  factory Timezone.empty() =>
      Timezone._(id: UniqueID(), area: StringValue(), location: StringValue());

  Timezone._({
    required this.id,
    required this.area,
    required this.location,
  });
}

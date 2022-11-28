import 'package:equatable/equatable.dart';

import 'value_object.dart';

abstract class Entity extends Equatable {
  UniqueID get id;

  @override
  List<Object?> get props => [id];
}

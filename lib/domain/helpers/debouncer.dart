import 'dart:async';

import 'package:flutter/material.dart';

class Debouncer {
  static Timer? _timer;

  /// Gives a delay to search inuts
  static void call(VoidCallback action, {int milliseconds = 500}) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}

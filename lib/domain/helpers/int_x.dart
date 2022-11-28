extension IntX on int {
  String get twoDigit {
    if (this < 10) return "0$this";
    return toString();
  }
}

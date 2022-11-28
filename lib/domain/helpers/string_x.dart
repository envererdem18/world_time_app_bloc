extension StringX on String {
  DateTime get toDateTime {
    final len = length;
    final utcDifference = substring(len - 6, len - 3);
    final intDifference = int.tryParse(utcDifference);
    DateTime date = DateTime.parse(this);
    if (intDifference != null) {
      date = date.add(Duration(hours: intDifference));
    }
    return date;
  }
}

extension StringExtension on String {
  DateTime dateTimeFromDDMMYYYY() {
    final date = split('/');

    return DateTime(
      int.parse(date[2]),
      int.parse(date[1]),
      int.parse(date[0]),
    );
  }
}

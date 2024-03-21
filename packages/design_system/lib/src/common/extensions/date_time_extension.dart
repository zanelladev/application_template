extension DateTimeExtension on DateTime {
  String formatToDDMMYYYY() {
    final day = this.day;
    final month = this.month;
    final year = this.year;

    return '${day.toString().padLeft(2, '0')}/${month.toString().padLeft(2, '0')}/$year';
  }
}

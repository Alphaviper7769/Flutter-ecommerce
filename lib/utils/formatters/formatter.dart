import 'package:intl/intl.dart';

class TFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-mm-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_IN', symbol: '₹').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
      return phoneNumber.replaceRange(0, 5, '${phoneNumber.substring(0, 5)} ');
    } else if (phoneNumber.length > 10) {
      final lastTenDigits = phoneNumber.substring(phoneNumber.length - 10);
      final remainingDigits = phoneNumber.substring(0, phoneNumber.length - 10);
      return '$remainingDigits ${lastTenDigits.replaceRange(0, 5, '${lastTenDigits.substring(0, 5)} ')}';
    } else {
      return phoneNumber;
    }
  }

  
}

import 'package:intl/intl.dart';

class DateConverter {
  static String ymdDate(DateTime dateTime) {
    return DateFormat('yyyy/MM/dd').format(dateTime);
  }

  static String dMY(DateTime dateTime) {
    return DateFormat('dd/MMM/yyyy').format(dateTime);
  }

  static String ymdTime(String dateTime) {
    return DateFormat('yyyy-MM-dd HH:mm:ss')
        .format(DateFormat('yyyy-MM-ddTHH:mm:ss.SSS').parse(dateTime));
  }

  static String localDateToIsoStringAMPM(DateTime dateTime) {
    return DateFormat('h:mm a | d-MMM-yyyy ').format(dateTime.toLocal());
  }

  static int convertMonthToDay(String noMonth) {
    return int.parse(noMonth) * 30;
  }
}

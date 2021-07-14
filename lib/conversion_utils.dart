import 'package:intl/intl.dart';

class ConversionUtils {
  static const SERVER_FORMAT_DATE_TIME_TRIMMED = "yyyy-MM-dd'T'HH:mm:ss";
  static const SERVER_FORMAT_DATE = "yyyy-MM-dd";
  static const SERVER_FORMAT_DATE_TIME = "yyyy-MM-dd HH:mm:ss";
  static const DISPLAY_DATE = "dd MMM, yyyy";

  static String convertToDisplayDate(String date,
      {String currentFormat = SERVER_FORMAT_DATE_TIME}) {
    DateTime inputDate =
        DateFormat(currentFormat)?.parse(date) ?? DateTime.now();
    return toDisplayDate(inputDate);
  }

  static String toDisplayDate(DateTime date) {
    var formatter = new DateFormat(DISPLAY_DATE);
    return formatter.format(date);
  }

  static String toServerDate(DateTime date) {
    var formatter = new DateFormat(SERVER_FORMAT_DATE);
    return formatter.format(date);
  }
}

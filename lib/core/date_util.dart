import 'package:intl/intl.dart';
import 'package:eplusflutter/core/shared_references.dart';
import 'package:timezone/standalone.dart';
import 'package:timezone/timezone.dart' as tz;

const kFormat = 'dd MMM yyyy | hh:mm a';
const kCoachDateFormat = 'dd MMMM yy';
const kDateFormat = 'dd/MM/yyyy';

class DateUtil {
  static DateTime get currentDate => DateTime.now();

  static DateTime parseDateToUTC(String original) {
    return DateTime.parse(original).toLocal();
  }

  // static Future<DateTime> parseDateToCondoTZ(String original) async {
  //   final date = DateTime.parse(original);
  //   final condoTZ = tz.getLocation(timeZone);
  //   final condoDateTime = TZDateTime.from(date, condoTZ);
  //   return condoDateTime;
  // }

  static String getCurrentDateTime(String format) {
    final dateFormat = DateFormat(format);
    return dateFormat.format(currentDate);
  }

  static String getDateTime(String inputDate) {
    final dateFormat = DateFormat(kFormat);
    DateTime coachDateTime = parseDateToUTC(inputDate);
    return dateFormat.format(coachDateTime);
  }

  static String getStringDate(DateTime datePicked) {
    final dateFormat = DateFormat(kDateFormat);
    return dateFormat.format(datePicked);
  }
}

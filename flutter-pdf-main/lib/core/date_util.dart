import 'package:intl/intl.dart';
import 'package:makepdfs/core/shared_references.dart';
import 'package:timezone/standalone.dart';
import 'package:timezone/timezone.dart' as tz;

const kHomeDateTimeFormat = 'EEEE, dd MMM yyyy | hh:mm a';
const kCoachDateFormat = 'dd MMMM yy';

class DateUtil {
  static DateTime get currentDate => DateTime.now();

  static DateTime parseDateToUTC(String original) {
    return DateTime.parse(original).toUtc();
  }

  // static Future<DateTime> parseDateToCondoTZ(String original) async {
  //   final timeZone = await SharedPreferencesUtil.getCondoTimeZone();
  //   final date = DateTime.parse(original);
  //   final condoTZ = tz.getLocation(timeZone);
  //   final condoDateTime = TZDateTime.from(date, condoTZ);
  //   return condoDateTime;
  // }

  static String getCurrentDateTime(String format) {
    final dateFormat = DateFormat(format);
    return dateFormat.format(currentDate);
  }

  static String getCoachDateTime(String format, String inputDate) {
    final dateFormat = DateFormat(format);
    DateTime coachDateTime = parseDateToUTC(inputDate);
    return dateFormat.format(coachDateTime);
  }
}

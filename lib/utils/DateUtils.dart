import 'package:intl/intl.dart';

class DateUtils {
  String formatDate2YY_MM_DD() {
    var now = new DateTime.now();
    var formatter = new DateFormat('MM-dd');
    String formatted = formatter.format(now);
    return formatted;
  }

  String formatDate2YY_MM_DDByNextDay(addDays) {
    //如果新建日期 传入 年月日 日+1 会出现夸月 跨年不精确的问题
    Duration duration = new Duration(days: addDays);
    var now = new DateTime.now();
    var next = now.add(duration);
    var formatter = new DateFormat('MM-dd');
    String formatted = formatter.format(next);
    return formatted;
  }

  DateTime getNowDateTimeAddDays(addDays) {
    //如果新建日期 传入 年月日 日+1 会出现夸月 跨年不精确的问题
    Duration duration = new Duration(days: addDays);
    var now = new DateTime.now();
    var next = now.add(duration);
    return next;
  }
}

class AppUtils {
  AppUtils._();

  static bool hasMatch(String? value, String pattern) {
    return (value == null) ? false : RegExp(pattern).hasMatch(value);
  }
  static bool isEmail(email) => RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[cC][oO][mM]$').hasMatch(email);

  static bool isNumber(String number) => (number.isEmpty)? false : RegExp(r'^\+91[1-9][0-9]{9}$').hasMatch(number);

  static bool isURL(String s) => hasMatch(s,
      r"^((((H|h)(T|t)|(F|f))(T|t)(P|p)((S|s)?))\://)?(www.|[a-zA-Z0-9].)[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,6}(\:[0-9]{1,5})*(/($|[a-zA-Z0-9\.\,\;\?\'\\\+&amp;%\$#\=~_\-]+))*$");
}
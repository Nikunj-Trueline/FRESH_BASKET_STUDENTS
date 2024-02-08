class Utils {
  static RegExp emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  static bool isValidEmail(String email) {
    return emailRegExp.hasMatch(email);
  }

  static final passwordRegex =
      RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@%!#*?&])(?=.*\W)");

  static bool isValidPassword(String password) {
    return passwordRegex.hasMatch(password);
  }

  static bool isContactValid(String contact)
  {
     return contact.length == 10;
  }
}

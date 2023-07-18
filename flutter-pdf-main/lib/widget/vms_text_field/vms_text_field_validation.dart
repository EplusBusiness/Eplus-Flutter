class TextFieldValidation {
  static bool validateLength(String value, int limitLength) {
    if ((!(value.length >= limitLength) && value.isNotEmpty) ||
        (value.isEmpty)) {
      return false;
    }
    return true;
  }
}

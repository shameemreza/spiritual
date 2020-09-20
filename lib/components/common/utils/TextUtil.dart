class TextUtil {
  static bool isEmptyOrNull(String text) {
    return ["", null, false, 0].contains(text);
  }
}

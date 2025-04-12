extension DoubleExtensions on double {
  String toStringAsFixedIfNeeded({int maxDigits = 2}) {
    String result = toStringAsFixed(maxDigits).replaceAll(RegExp(r'0+$'), '');

    if (result.endsWith('.')) {
      result = result.substring(0, result.length - 1);
    }

    return result;
  }
}

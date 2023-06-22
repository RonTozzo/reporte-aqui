abstract class CpfValidator {
  static const List<int> _cpfWeight = [11, 10, 9, 8, 7, 6, 5, 4, 3, 2];

  static bool isValidCPF(String cpf) {
    var regExp = RegExp("[^0-9]");
    final cpfDigits = cpf.replaceAll(regExp, '');

    if (cpfDigits.length != 11) return false;

    if (cpfDigits == ("00000000000") ||
        cpfDigits == ("11111111111") ||
        cpfDigits == ("22222222222") ||
        cpfDigits == ("33333333333") ||
        cpfDigits == ("44444444444") ||
        cpfDigits == ("55555555555") ||
        cpfDigits == ("66666666666") ||
        cpfDigits == ("77777777777") ||
        cpfDigits == ("88888888888") ||
        cpfDigits == ("99999999999")) {
      return false;
    }

    var digit1 = _calculateDigit(cpfDigits.substring(0, 9), _cpfWeight);
    var digit2 = _calculateDigit(
        cpfDigits.substring(0, 9) + digit1.toString(), _cpfWeight);
    return cpfDigits ==
        (cpfDigits.substring(0, 9) + digit1.toString() + digit2.toString());
  }

  static int _calculateDigit(String str, List<int> weightList) {
    var sum = 0;

    for (int i = str.length - 1, digit; i >= 0; i--) {
      digit = int.parse(str.substring(i, i + 1));
      sum += digit * weightList[weightList.length - str.length + i];
    }

    sum = 11 - sum % 11;
    return sum > 9 ? 0 : sum;
  }
}

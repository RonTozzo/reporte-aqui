import 'constants.dart';

abstract class PhoneNumberValidator {
  static bool isValidPhoneNumber(String value) {
    // Remova quaisquer caracteres não numéricos do valor do telefone
    final phoneNumber = value.replaceAll(RegExp(r'[^0-9]'), '');

    // Verifique se o número de telefone possui 10 ou 11 dígitos (com DDD)
    if (phoneNumber.length == 10 || phoneNumber.length == 11) {
      // Verifique se o número de telefone começa com os DDDs válidos para o Brasil

      final ddd = phoneNumber.substring(0, 2);
      if (validDDDs.contains(ddd)) {
        return true; // O número de telefone é válido
      }
    }
    return false;
  }
}

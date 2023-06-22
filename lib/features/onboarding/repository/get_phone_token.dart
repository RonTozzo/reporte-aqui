import 'dart:math';

abstract class GetPhoneTokenRepository {
  static String getPhoneToken() {
    final random = Random();
    final tokenIndex = random.nextInt(10);

    return _tokens[tokenIndex];
  }

  static const _tokens = [
    '123456',
    '987654',
    '543210',
    '987123',
    '456789',
    '321654',
    '789012',
    '654321',
    '890123',
    '234567'
  ];
}

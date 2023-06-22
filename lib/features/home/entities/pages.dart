import 'package:freezed_annotation/freezed_annotation.dart';

part 'pages.freezed.dart';

@freezed
class HomePage with _$HomePage {
  const HomePage._();
  const factory HomePage.settings() = _Settings;
  const factory HomePage.home() = _Home;
  const factory HomePage.chats() = _Chats;
}

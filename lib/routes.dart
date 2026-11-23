import 'package:get/get.dart';
import 'package:pas_mobile/pages/main_menu.dart';

class Routes{
  static const String main_menu = '/main_menu';

  static final myPages = [
     GetPage(
       name: main_menu,
       page: () => MainMenu()
     ),
  ];
}


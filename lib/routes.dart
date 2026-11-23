import 'package:get/get.dart';
import 'package:pas_mobile/pages/main_menu.dart';
import 'package:pas_mobile/pages/detail_makanan_page.dart';
import 'package:pas_mobile/pages/login_page.dart';

class Routes{
  static const String main_menu = '/main_menu';
  static const String detail_makanan = '/detail_makanan';
  static const String Login = '/Login';

  static final myPages = [
     GetPage(
       name: main_menu,
       page: () => MainMenu()
     ),
     GetPage(
       name: detail_makanan,
       page: () => DetailMakananPage(),
     ),
     GetPage(
       name: Login,
       page: () => LoginPage(),
     ),
  ];
}


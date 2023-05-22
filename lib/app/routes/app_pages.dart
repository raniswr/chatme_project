import 'package:get/route_manager.dart';

import '../modules/rootPage/views/widgets/chatPage/bindings/chat_page_binding.dart';
import '../modules/rootPage/views/widgets/chatPage/views/chat_page_view.dart';
import '../modules/loginPage/bindings/login_page_binding.dart';
import '../modules/loginPage/views/login_page_view.dart';
import '../modules/registerPage/bindings/register_page_binding.dart';
import '../modules/registerPage/views/register_page_view.dart';
import '../modules/rootPage/bindings/root_page_binding.dart';
import '../modules/rootPage/views/root_page_view.dart';
import '../modules/rootPage/views/widgets/homePage/bindings/home_page_binding.dart';
import '../modules/rootPage/views/widgets/homePage/views/home_page_view.dart';
import '../modules/rootPage/views/widgets/profilePage/bindings/profile_page_binding.dart';
import '../modules/rootPage/views/widgets/profilePage/views/profile_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.LOGIN_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME_PAGE,
      page: () => const HomePageView(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => const LoginPageView(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_PAGE,
      page: () => const RegisterPageView(),
      binding: RegisterPageBinding(),
    ),
    GetPage(
      name: _Paths.ROOT_PAGE,
      page: () => const RootPageView(),
      binding: RootPageBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_PAGE,
      page: () => const ProfilePageView(),
      binding: ProfilePageBinding(),
    ),
    GetPage(
      name: _Paths.CHAT_PAGE,
      page: () => const ChatPageView(),
      binding: ChatPageBinding(),
    ),
  ];
}

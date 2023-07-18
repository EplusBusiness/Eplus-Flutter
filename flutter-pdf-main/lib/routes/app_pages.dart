
import 'package:get/get.dart';
import 'package:makepdfs/src/Detail/detail_project.dart';
import 'package:makepdfs/src/DetailFolder/detail_folder.dart';
import 'package:makepdfs/src/DetailFolder/detail_folder_screen.dart';
import 'package:makepdfs/src/Form/create_form.dart';

import '../src/Home/home.dart';
import '../src/Login/auth.dart';
import '../src/Splash/modules.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
        name: Routes.HOME,
        page: () => LayoutHomeScreen(),
        binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.CREATEFORM,
      page: () => CreateFormScreen(),
      binding: CreateFormBinding(),
    ),
    GetPage(
      name: Routes.DETAILFOLDER,
      page: () => DetailFolderScreen(),
      binding: DetailFolderBinding(),
    ),
    GetPage(
      name: Routes.DETAILPROJECT,
      page: () => DetailProjectScreen(),
      binding: DetailProjectBinding(),
    ),
  ];
}

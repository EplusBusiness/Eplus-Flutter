import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:makepdfs/app_binding.dart';
import 'package:makepdfs/pages/invoices.dart';
import 'package:makepdfs/routes/app_pages.dart';
import 'package:makepdfs/src/Detail/detail_project_screen.dart';
import 'package:makepdfs/src/Form/create_form_screen.dart';
import 'package:makepdfs/src/Home/layout_home.dart';
import 'package:makepdfs/src/Storage/detail_item_screen.dart';
import 'package:makepdfs/src/Storage/storage_screen.dart';
import 'package:makepdfs/src/Splash/splash_screen.dart';
import 'package:get/get.dart';

import 'di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DenpendencyInjection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: AppBinding(),
      initialRoute: Routes.SPLASH,
      defaultTransition: Transition.fade,
      getPages: AppPages.routes,
      builder: EasyLoading.init(),
    );

    return MaterialApp(
      home: Scaffold(
        body: CreateFormScreen(),
      ),
    );
  }
}

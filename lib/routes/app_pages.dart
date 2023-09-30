import 'package:eplusflutter/src/detail_brand/detail_brand.dart';
import 'package:eplusflutter/src/edit_form/edit_form.dart';
import 'package:eplusflutter/src/form_storage/form_storage.dart';
import 'package:eplusflutter/src/register/register.dart';
import 'package:eplusflutter/src/search_storage/search_storage.dart';
import 'package:eplusflutter/src/user_detail/user_detail.dart';
import 'package:get/get.dart';
import '../src/home/home.dart';
import '../src/home/home_screen.dart';
import '../src/login/auth.dart';
import '../src/pdf_preview/pdfpreview.dart';
import '../src/splash/modules.dart';
import '../src/storage/storage.dart';
import '../src/form/create_form.dart';
import '../src/detail_folder/detail_folder.dart';
import '../src/detail_project/detail_project.dart';
import '../src/add_item/add_items.dart';
import '../src/edit_item/edit_items.dart';
import '../src/search/list_search.dart';
import '../src/signature/signature.dart';
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
      name: Routes.USERDETAIL,
      page: () => UserDetailScreen(),
      binding: UserDetailBinding(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => RegisterScreen(),
      binding: RegisterBinding(),
    ),
    GetPage(
        name: Routes.HOME,
        page: () => HomeScreen(),
        binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.CREATEFORM,
      page: () => CreateFormScreen(),
      binding: CreateFormBinding(),
    ),
    GetPage(
      name: Routes.EDITFORM,
      page: () => EditFormScreen(),
      binding: EditFormBinding(),
    ),
    GetPage(
      name: Routes.PDFPREVIEW,
      page: () => PdfPreviewScreen(),
      binding: PdfPreviewBinding(),
    ),
    GetPage(
      name: Routes.SIGNATURE,
      page: () => SignatureScreen(),
      binding: SignatureBinding(),
    ),
    GetPage(
      name: Routes.DETAILFOLDER,
      page: () => DetailFolderScreen(),
      binding: DetailFolderBinding(),
    ),
    GetPage(
      name: Routes.DETAILBRAND,
      page: () => DetailBrandScreen(),
      binding: DetailBrandBinding(),
    ),
    GetPage(
      name: Routes.DETAILPROJECT,
      page: () => DetailProjectScreen(),
      binding: DetailProjectBinding(),
    ),
    GetPage(
      name: Routes.ADDITEMS,
      page: () => AddItemsScreen(),
      binding: AddItemstBinding(),
    ),
    GetPage(
      name: Routes.SEARCH,
      page: () => ListSearchScreen(),
      binding: ListSearchBinding(),
    ),
    GetPage(
      name: Routes.STORAGE,
      page: () => StorageScreen(),
      binding: StorageBinding(),
    ),
    GetPage(
      name: Routes.FORMSTORAGE,
      page: () => FormStorageScreen(),
      binding: FormStorageBinding(),
    ),
    GetPage(
      name: Routes.EDITITEMS,
      page: () => EditItemsScreen(),
      binding: EditItemsBinding(),
    ),
    GetPage(
      name: Routes.SEARCHSTORAGE,
      page: () => SearchStorageScreen(),
      binding: SearchStorageBinding(),
    ),
  ];
}

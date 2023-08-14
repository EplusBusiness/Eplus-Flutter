import 'package:eplusflutter/api/provider/api_add_item_provider.dart';
import 'package:eplusflutter/api/provider/api_detail_brand_provider.dart';
import 'package:eplusflutter/api/provider/api_form_storage_provider.dart';
import 'package:eplusflutter/api/provider/api_register_provider.dart';
import 'package:eplusflutter/api/provider/api_signature_provider.dart';
import 'package:eplusflutter/api/provider/api_user_detail_provider.dart';
import 'package:eplusflutter/api/repository/api_add_item_repository.dart';
import 'package:eplusflutter/api/repository/api_detail_brand_repository.dart';
import 'package:eplusflutter/api/repository/api_form_storage_repository.dart';
import 'package:eplusflutter/api/repository/api_pdfpreview_repository.dart';
import 'package:eplusflutter/api/repository/api_register_repository.dart';
import 'package:eplusflutter/api/repository/api_signature_repository.dart';
import 'package:eplusflutter/api/repository/api_storage_repository.dart';
import 'package:eplusflutter/api/repository/api_user_detai_repository.dart';
import 'package:get/get.dart';
import 'api/provider/api_auth_provider.dart';
import 'api/provider/api_create_form_provider.dart';
import 'api/provider/api_detail_folder_provider.dart';
import 'api/provider/api_detail_project_provider.dart';
import 'api/provider/api_edit_form_provider.dart';
import 'api/provider/api_edit_item_provider.dart';
import 'api/provider/api_home_provider.dart';
import 'api/provider/api_list_search_provider.dart';
import 'api/provider/api_pdfpreview_provider.dart';
import 'api/provider/api_storage_provider.dart';
import 'api/repository/api_auth_repository.dart';
import 'api/repository/api_create_form_repository.dart';
import 'api/repository/api_detail_folder_repository.dart';
import 'api/repository/api_detail_project_repository.dart';
import 'api/repository/api_edit_form_repository.dart';
import 'api/repository/api_edit_item_repository.dart';
import 'api/repository/api_home_repository.dart';
import 'api/repository/api_list_search_repository.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() async {
    Get.put(ApiAuthProvider(), permanent: true);
    Get.put(ApiAuthRepository(apiProvider: Get.find()), permanent: true);

    Get.put(ApiUserDetailProvider(), permanent: true);
    Get.put(ApiUserDetailRepository(apiProvider: Get.find()), permanent: true);

    Get.put(ApiRegisterProvider(), permanent: true);
    Get.put(ApiRegisterRepository(apiProvider: Get.find()), permanent: true);

    Get.put(ApiHomeProvider(), permanent: true);
    Get.put(ApiHomeRepository(apiProvider: Get.find()), permanent: true);

    Get.put(ApiDetailFolderProvider(), permanent: true);
    Get.put(ApiDetailFolderRepository(apiProvider: Get.find()), permanent: true);

    Get.put(ApiDetailProjectProvider(), permanent: true);
    Get.put(ApiDetailProjectRepository(apiProvider: Get.find()), permanent: true);

    Get.put(ApiDetailBrandProvider(), permanent: true);
    Get.put(ApiDetailBrandRepository(apiProvider: Get.find()), permanent: true);

    Get.put(ApiListSearchProvider(), permanent: true);
    Get.put(ApiListSearchRepository(apiProvider: Get.find()), permanent: true);

    Get.put(ApiAddItemProvider(), permanent: true);
    Get.put(ApiAddItemRepository(apiProvider: Get.find()), permanent: true);

    Get.put(ApiEditItemProvider(), permanent: true);
    Get.put(ApiEditItemRepository(apiProvider: Get.find()), permanent: true);

    Get.put(ApiCreateFormProvider(), permanent: true);
    Get.put(ApiCreateFormRepository(apiProvider: Get.find()), permanent: true);

    Get.put(ApiEditFormProvider(), permanent: true);
    Get.put(ApiEditFormRepository(apiProvider: Get.find()), permanent: true);

    Get.put(ApiPdfPreviewProvider(), permanent: true);
    Get.put(ApiPdfPreviewRepository(apiProvider: Get.find()), permanent: true);

    Get.put(ApiStorageProvider(), permanent: true);
    Get.put(ApiStorageRepository(apiProvider: Get.find()), permanent: true);

    Get.put(ApiSignatureProvider(), permanent: true);
    Get.put(ApiSignatureRepository(apiProvider: Get.find()), permanent: true);

    Get.put(ApiFormStorageProvider(), permanent: true);
    Get.put(ApiFormStorageRepository(apiProvider: Get.find()), permanent: true);
  }
}

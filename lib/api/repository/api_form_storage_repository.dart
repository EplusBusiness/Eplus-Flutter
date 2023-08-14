import 'dart:async';
import 'package:eplusflutter/api/provider/api_form_storage_provider.dart';
import '../../models/response/forms_reponse.dart';
import '../api.dart';

class ApiFormStorageRepository {
  ApiFormStorageRepository({required this.apiProvider});

  final ApiFormStorageProvider apiProvider;

  Future<FormsResponse?> getAllForms(String id) async {
    final res = await apiProvider.getAllForms(ApiConstants.allForms + id);
    if (res.statusCode == 200) {
      return FormsResponse.fromJson(res.body);
    }
  }
}
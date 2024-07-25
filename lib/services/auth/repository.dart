import 'package:get/get.dart';
import 'package:hajithon_teami_flutter_app/network/api.dart';

class AuthRepository {
  final ApiProvider api;
  AuthRepository({ApiProvider? api}) : api = api ?? Get.find<ApiProvider>();
}

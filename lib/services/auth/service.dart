import 'package:get/get.dart';
import 'package:hajithon_teami_flutter_app/services/auth/repository.dart';

class AuthService extends GetxController {
  final AuthRepository repository;
  AuthService({AuthRepository? repository}) : repository = repository ?? AuthRepository();
}

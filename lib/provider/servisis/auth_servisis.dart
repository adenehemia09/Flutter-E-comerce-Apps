import 'package:ecommerce_apps/model/user_model.dart';
import 'package:http/http.dart' as http;

class AuthServis {
  String baseUrl = 'https://shamo-backend.buildwithangga.id/api';

  Future<UserModel> register({
    String? name,
    String? userName,
    String? email,
    String? password,
  }) async {}
}

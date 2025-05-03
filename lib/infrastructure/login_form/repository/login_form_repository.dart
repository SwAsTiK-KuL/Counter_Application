import '../../../domain/login_form/repository/i_login_form_repository.dart';
import '../../core/storage/token_storage.dart';
import 'package:dio/dio.dart';

class LoginFormRepository implements ILoginFormRepository {
  final Dio _dio;
  final TokenStorage _tokenStorage;

  LoginFormRepository(this._dio, this._tokenStorage);

  @override
  Future<String> login({required String email, required String password}) async {
    final response = await _dio.post(
      'https://reqres.in/api/login',
      data: {'email': email, 'password': password},
      options: Options(headers: {'x-api-key': 'reqres-free-v1'}),
    );

    final token = response.data['token'];
    await _tokenStorage.saveToken(token);
    return token;
  }

  @override
  Future<void> saveToken(String token) => _tokenStorage.saveToken(token);

  @override
  Future<String?> getToken() => _tokenStorage.getToken();

  @override
  Future<void> clearToken() => _tokenStorage.clearToken();
}

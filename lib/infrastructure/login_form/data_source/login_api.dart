import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../domain/login_form/entity/login_response_entity.dart';
import '../../../domain/login_form/repository/i_login_form_repository.dart'; // import the interface

class LoginApi implements ILoginFormRepository {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: 'https://reqres.in/api',
    headers: {
      'Content-Type': 'application/json',
      'x-api-key': 'reqres-free-v1',
    },
  ));

  @override
  Future<String> login({required String email, required String password}) async {
    try {
      final response = await _dio.post(
        '/login',
        data: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        final loginResponse = LoginResponseEntity.fromJson(response.data);

        // Save token
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('auth_token', loginResponse.token);

        print('Login successful: Token saved: ${loginResponse.token}');
        return loginResponse.token;
      } else {
        throw Exception('Login failed with status: ${response.statusCode}');
      }
    } on DioException catch (e) {
      throw Exception('Login failed: ${e.response?.data ?? e.message}');
    } catch (e) {
      throw Exception('Unexpected error during login: $e');
    }
  }

  @override
  Future<void> saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('auth_token', token);
  }

  @override
  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('auth_token');
  }

  @override
  Future<void> clearToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('auth_token');
  }
}

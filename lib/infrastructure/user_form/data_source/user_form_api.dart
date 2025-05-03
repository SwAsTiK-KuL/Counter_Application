import 'package:dio/dio.dart';
import '../dto/user_form_dto.dart';

class UserFormApi {
  final Dio dio;

  UserFormApi()
      : dio = Dio(BaseOptions(
    baseUrl: 'https://reqres.in/api',
    headers: {
      'Content-Type': 'application/json',
      'x-api-key': 'reqres-free-v1',
    },
  ));

  Future<void> createUser(UserFormDto dto) async {
    try {
      final response = await dio.post(
        '/user',
        data: dto.toJson(),
      );

      if (response.statusCode != 201) {
        throw Exception('Failed to create user');
      }
    } catch (e) {
      throw Exception('Failed to create user: $e');
    }
  }

  Future<void> updateUser(int id, UserFormDto dto) async {
    try {
      final response = await dio.put(
        '/user/$id',
        data: dto.toJson(),
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to update user');
      }
    } catch (e) {
      throw Exception('Failed to update user: $e');
    }
  }

  Future<void> deleteUser(int id) async {
    try {
      final response = await dio.delete('/user/$id');

      if (response.statusCode != 204) {
        throw Exception('Failed to delete user');
      }
    } catch (e) {
      throw Exception('Failed to delete user: $e');
    }
  }

// Optional: Fetch users
// Future<List<UserFormDto>> getUsers() async {
//   try {
//     final response = await dio.get('/users?page=1');
//     if (response.statusCode != 200) {
//       throw Exception('Failed to load users');
//     }
//     final List data = response.data['data'];
//     return data
//         .map<UserFormDto>((json) => UserFormDto.fromJson(json))
//         .toList();
//   } catch (e) {
//     throw Exception('Failed to load users: $e');
//   }
// }
}

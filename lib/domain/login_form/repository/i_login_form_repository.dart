abstract class ILoginFormRepository {
  Future<String> login({required String email, required String password});
  Future<void> saveToken(String token);
  Future<String?> getToken();
  Future<void> clearToken();
}
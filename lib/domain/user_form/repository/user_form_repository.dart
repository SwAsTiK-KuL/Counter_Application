import '../entity/user_form_entity.dart';

abstract class UserFormRepository {
  Future<void> createUser(UserFormEntity user);
  Future<void> updateUser(int id, UserFormEntity user);
  Future<void> deleteUser(int id);
  // Future<List<UserFormEntity>> getUsers();
}

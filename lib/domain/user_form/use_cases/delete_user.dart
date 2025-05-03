import '../repository/user_form_repository.dart';

class DeleteUser {
  final UserFormRepository repository;

  DeleteUser(this.repository);

  Future<void> call(int id) async {
    await repository.deleteUser(id);
  }
}

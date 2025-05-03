import '../entity/user_form_entity.dart';
import '../repository/user_form_repository.dart';

class UpdateUser {
  final UserFormRepository repository;

  UpdateUser(this.repository);

  Future<void> call(int id, UserFormEntity user) async {
    await repository.updateUser(id, user);
  }
}

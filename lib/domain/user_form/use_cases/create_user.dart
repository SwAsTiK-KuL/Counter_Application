import '../entity/user_form_entity.dart';
import '../repository/user_form_repository.dart';

class CreateUser {
  final UserFormRepository repository;

  CreateUser(this.repository);

  Future<void> call(UserFormEntity user) async {
    await repository.createUser(user);
  }
}

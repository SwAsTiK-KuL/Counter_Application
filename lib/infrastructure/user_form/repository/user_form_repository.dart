// infrastructure/user_form/repository/user_form_repository.dart

import '../../../domain/user_form/entity/user_form_entity.dart';
import '../../../domain/user_form/repository/user_form_repository.dart';
import '../data_source/user_form_api.dart';
import '../dto/user_form_dto.dart';

class UserFormRepositoryImpl implements UserFormRepository {
  final UserFormApi api;

  UserFormRepositoryImpl(this.api);

  @override
  Future<void> createUser(UserFormEntity user) async {
    final dto = UserFormDto.fromDomain(user);
    await api.createUser(dto);
  }

  @override
  Future<void> updateUser(int id, UserFormEntity user) async {
    final dto = UserFormDto.fromDomain(user);
    await api.updateUser(id, dto);
  }

  @override
  Future<void> deleteUser(int id) async {
    await api.deleteUser(id);
  }

  // @override
  // Future<List<UserFormEntity>> getUsers() async {
  //   final dtos = await api.getUsers();
  //   return dtos.map((dto) => dto.toDomain()).toList();
  // }
}

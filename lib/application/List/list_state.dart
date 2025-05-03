import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:counter_app/infrastructure/List/dto/resource_data_dto.dart';

part 'list_state.freezed.dart';

@freezed
class ListState with _$ListState {
  const factory ListState.initial() = ListInitial;
  const factory ListState.loading() = ListLoading;
  const factory ListState.loaded(List<ResourceDataDto> resources) = ListLoaded;
  const factory ListState.error(String message) = ListError;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_event.freezed.dart';

@freezed
class ListEvent with _$ListEvent {
  const factory ListEvent.fetchListData() = FetchListData;
}

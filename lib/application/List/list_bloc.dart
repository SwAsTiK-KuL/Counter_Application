import 'package:flutter_bloc/flutter_bloc.dart';
import '../../infrastructure/List/data_source/list_api.dart';
import 'list_event.dart';
import 'list_state.dart';

class ListBloc extends Bloc<ListEvent, ListState> {
  final ResourceApi resourceApi;

  ListBloc({required this.resourceApi}) : super(ListInitial()) {
    on<FetchListData>((event, emit) async {
      emit(ListLoading());
      try {
        final data = await resourceApi.fetchResources();
        emit(ListLoaded(data.data));
      } catch (e) {
        emit(ListError(e.toString()));
      }
    });
  }
}

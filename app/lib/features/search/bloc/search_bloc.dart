// search_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'dart:developer';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchInitial()) {
    // Registrieren Sie hier den Event-Handler
    on<PerformSearchEvent>((event, emit) {
      // Hier können Sie die Suche durchführen und die Ergebnisse aktualisieren.
      emit(SearchResults(['Result 1', 'Result 2', 'Result 3']));
      log(event.query);
    });
  }

  @override
  Stream<SearchState> mapEventToState(SearchEvent event) async* {
    // Dieser Block bleibt leer, da die Logik im on<PerformSearchEvent>-Handler behandelt wird.
  }
}

// search_event.dart
part of 'search_bloc.dart';

@immutable
abstract class SearchEvent {}

class PerformSearchEvent extends SearchEvent {
  final String query;

  PerformSearchEvent(this.query);
}

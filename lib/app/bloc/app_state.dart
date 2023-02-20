// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'app_bloc.dart';

enum AppStatus {
  initial,
  success,
}

class AppState extends Equatable {
  AppState({
    this.status = AppStatus.initial,
    this.favorites = const [],
    this.selectedIndex = 0,
    WordPair? word,
  }) : word = word ?? WordPair.random();

  final AppStatus status;
  final List<WordPair> favorites;
  final WordPair word;
  final int selectedIndex;

  @override
  List<Object> get props => [
        status,
        favorites,
        word,
        selectedIndex,
      ];

  AppState copyWith({
    AppStatus? status,
    List<WordPair>? favorites,
    WordPair? word,
    int? selectedIndex,
  }) {
    return AppState(
      status: status ?? this.status,
      favorites: favorites ?? this.favorites,
      word: word ?? this.word,
      selectedIndex: selectedIndex ?? this.selectedIndex,
    );
  }
}

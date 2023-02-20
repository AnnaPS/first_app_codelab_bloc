part of 'app_bloc.dart';

class AppEvent extends Equatable {
  const AppEvent();

  @override
  List<Object> get props => [];
}

class AppEventNextFetched extends AppEvent {}

class AppEventAddFavorites extends AppEvent {
  const AppEventAddFavorites({required this.word});

  final WordPair word;
  @override
  List<Object> get props => [word];
}

class AppEventSelectedIndexChanged extends AppEvent {
  const AppEventSelectedIndexChanged({
    required this.selectedIndex,
  });

  final int selectedIndex;
  @override
  List<Object> get props => [selectedIndex];
}

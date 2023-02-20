import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:english_words/english_words.dart';
import 'package:equatable/equatable.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState()) {
    on<AppEventNextFetched>(_onNextFetched);
    on<AppEventAddFavorites>(_onAddFavorites);
    on<AppEventSelectedIndexChanged>(_onSelectedIndex);
  }

  Future<void> _onNextFetched(
    AppEventNextFetched event,
    Emitter<AppState> emit,
  ) async {
    emit(
      state.copyWith(
        status: AppStatus.success,
        word: WordPair.random(),
      ),
    );
  }

  Future<void> _onAddFavorites(
    AppEventAddFavorites event,
    Emitter<AppState> emit,
  ) async {
    final newList = [event.word];
    final updateFavorites = [...state.favorites, ...newList];

    emit(
      state.copyWith(
        status: AppStatus.success,
        favorites: updateFavorites,
      ),
    );
  }

  Future<void> _onSelectedIndex(
    AppEventSelectedIndexChanged event,
    Emitter<AppState> emit,
  ) async {
    emit(state.copyWith(selectedIndex: event.selectedIndex));
  }
}

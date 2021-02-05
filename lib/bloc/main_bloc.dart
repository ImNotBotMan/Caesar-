import 'dart:async';
import 'package:ceasar/criptor.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainInitial());

  @override
  Stream<MainState> mapEventToState(
    MainEvent event,
  ) async* {
    if (event is CriptEvent) {
      criptor(event.inputText, event.inputKey);
    }
  }
}

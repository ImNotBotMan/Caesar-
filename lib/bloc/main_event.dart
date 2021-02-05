part of 'main_bloc.dart';

@immutable
abstract class MainEvent {}

class CriptEvent extends MainEvent {
  final String inputText;
  final String inputKey;
  CriptEvent(this.inputText, this.inputKey);
}

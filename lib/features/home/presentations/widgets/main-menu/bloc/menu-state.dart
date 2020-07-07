abstract class MainMenuState {}

class MainMenuLoading extends MainMenuState {}

class MainMenuLoaded extends MainMenuState {
  final data;
  MainMenuLoaded(this.data);
}

class MainMenuFailure extends MainMenuState {
  final String error;
  MainMenuFailure(this.error);
}

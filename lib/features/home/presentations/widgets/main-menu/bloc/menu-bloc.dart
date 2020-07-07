import 'package:coronavirus2020/features/home/data/datasources/menu.datasource.dart';
import 'package:coronavirus2020/features/home/data/models/menu-item.model.dart';
import 'package:coronavirus2020/features/home/presentations/widgets/main-menu/bloc/menu-events.dart';
import 'package:coronavirus2020/features/home/presentations/widgets/main-menu/bloc/menu-state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainMenuBloc extends Bloc<MainMenuEvents, MainMenuState> {
  MenuLocalDataSource localData;

  // Dependency
  MainMenuBloc() {
    this.localData = new MenuLocalDataSource();
  }

  @override
  MainMenuState get initialState => MainMenuLoading();

  @override
  Stream<MainMenuState> mapEventToState(MainMenuEvents event) async* {
    if (event is LoadMainMenuEvent) {
      // Notify: loading
      yield MainMenuLoading();

      // Get Data. No matter where get data) From network, local data or storage, depends on busunuess
      List<MenuItemModel> data = await this.getData();

      // Notify: Data come
      yield MainMenuLoaded(data);
    }
  }

  Future<List<MenuItemModel>> getData() {
    return this.localData.getData();
  }
}

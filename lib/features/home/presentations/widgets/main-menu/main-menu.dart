import 'package:coronavirus2020/features/home/data/models/menu-item.model.dart';
import 'package:coronavirus2020/features/home/presentations/widgets/main-menu/bloc/menu-bloc.dart';
import 'package:coronavirus2020/features/home/presentations/widgets/main-menu/bloc/menu-events.dart';
import 'package:coronavirus2020/features/home/presentations/widgets/main-menu/bloc/menu-state.dart';
import 'package:coronavirus2020/shared/widgets/empty.dart';
import 'package:coronavirus2020/shared/widgets/error/error.dart';
import 'package:coronavirus2020/shared/widgets/spinner/spinner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (ctx) => MainMenuBloc()
              ..add(
                LoadMainMenuEvent(),
              ),
          ),
        ],
        child: Builder(
          builder: (context) {
            return BlocBuilder(
              bloc: BlocProvider.of<MainMenuBloc>(context),
              builder: (ctx, MainMenuState state) {
                // Loading
                if (state is MainMenuLoading) {
                  return AppSpinner();
                }

                // Loaded
                if (state is MainMenuLoaded) {
                  return buildContent(state.data);
                }

                // Error
                if (state is MainMenuFailure) {
                  return AppError(error: state.error);
                }

                // Default
                return AppEmpty();
              },
            );
          },
        ));
  }

  Widget buildContent(d) {
    return Expanded(
      child: GridView.builder(
        itemCount: d.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 1.8),
        itemBuilder: (ctx, index) => buildMenuItem(d[index]),
      ),
    );
  }

  Widget buildMenuItem(MenuItemModel m) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              'assets/images/${m.image}',
              height: 30,
              color: Colors.white.withOpacity(0.9),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              m.label,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color(m.color)),
          color: Color(m.color).withOpacity(0.8),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      padding: EdgeInsets.all(7),
    );
  }
}

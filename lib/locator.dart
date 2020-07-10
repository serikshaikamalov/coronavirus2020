import 'package:coronavirus2020/core/services/navigation.service.dart';
import 'package:coronavirus2020/features/home/data/datasources/statistics.remotesource.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final locator = GetIt.instance;

Future<void> init() async {
  // Services
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => StatisticsRemoteSource());

  //! External
  final sharedPreferences = await SharedPreferences.getInstance();
  locator.registerLazySingleton(() => sharedPreferences);
}

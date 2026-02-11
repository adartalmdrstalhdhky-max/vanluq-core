import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'core/network/network_info.dart';

final sl = GetIt.instance;
Future<void> init() async {
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
  sl.registerLazySingleton(() => InternetConnectionChecker.instance);
}

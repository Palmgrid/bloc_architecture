import 'package:bloc_architecture/presentation/bloc/home_screen_bloc/export.dart';

import '../presentation/bloc/initializer_bloc/initializer_bloc.dart';
import 'di.dart';

Future initializeBlocs() async {
  serviceLocator.registerLazySingleton(
    () => InitializerBloc(),
  );
  serviceLocator.registerLazySingleton(
        () => HomeScreenBloc(),
  );
}

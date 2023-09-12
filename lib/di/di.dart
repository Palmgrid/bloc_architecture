import 'package:bloc_architecture/di/export.dart';
import 'package:get_it/get_it.dart';

GetIt serviceLocator = GetIt.instance;

Future initializeDependencies() async {
  await Future.wait(
    [
      initializeNetworkDependencies(),
      initializeRepoDependencies(),
      initializeBlocs(),
    ],
  );
}

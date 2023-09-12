

import 'package:shared_preferences/shared_preferences.dart';

import '../data/network/network_helper.dart';
import '../data/network/network_helper_impl.dart';
import '../data/storage/storage_repo.dart';
import '../data/storage/storage_repo_impl.dart';
import 'di.dart';

late StorageRepo storageRepo;

Future initializeNetworkDependencies() async {
  storageRepo = StorageRepoImpl(
    sharedPreferences: await SharedPreferences.getInstance(),
  );
  serviceLocator.registerLazySingleton<NetworkHelper>(
    () => NetworkHelperImpl(
      storageRepo: storageRepo,
    ),
  );
}

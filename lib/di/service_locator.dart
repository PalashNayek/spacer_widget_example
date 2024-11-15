import 'package:get_it/get_it.dart';

import '../view_models/spacer_viewmodel.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<SpacerViewModel>(() => SpacerViewModel());
}

import 'package:dalel/core/database/cashe/cache_helper.dart';
import 'package:dalel/core/services/service_locator.dart';

void onBoardingVisited() {
  getIt<CacheHelper>().saveData(key: "isOnBoardingVisited", value: true);
}

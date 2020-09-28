import 'package:demogetx/src/page/home/binding/home_binding.dart';
import 'package:demogetx/src/page/home/presentation/views/country_view.dart';
import 'package:demogetx/src/page/home/presentation/views/home_view.dart';
import 'package:get/get.dart';

class AppPages {
  static const INITIAL = AppRoutes.HOME;

  static final routes = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.COUNTRY,
      page: () => CountryView(),
    ),
    // GetPage(
    //   name: Routes.DETAILS,
    //   page: () => DetailsView(),
    // ),
  ];
}

abstract class AppRoutes {
  static const HOME = '/home';
  static const COUNTRY = '/country';
  // static const DETAILS = '/details';
}

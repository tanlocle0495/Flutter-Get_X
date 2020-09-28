import 'package:demogetx/src/page/home/data/repository/home_repository.dart';
import 'package:demogetx/src/page/home/domain/adapters/repository_adapter.dart';
import 'package:demogetx/src/page/home/presentation/controller/home_controller.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

/// DI
class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Dio());
    Get.lazyPut<IHomeRepository>(() => HomeRepository(dio: Get.find()));
    Get.lazyPut(() => HomeController(homeRepository: Get.find()));
  }
}

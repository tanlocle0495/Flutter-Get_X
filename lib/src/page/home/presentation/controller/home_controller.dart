import 'package:demogetx/src/page/home/domain/adapters/repository_adapter.dart';
import 'package:demogetx/src/page/home/domain/entity/case_model.dart';
import 'package:get/get.dart';

/// create ENUM
enum Status { loading, success, error }

class HomeController extends GetxController {
  final IHomeRepository homeRepository;

  /// constructor
  HomeController({this.homeRepository});

  /// create status ex: from request init value is loading
  final status = Status.loading.obs;

  /// when controller initialize. caseModel.obs has same result
  /// it return data and convert like this
  final cases = Rx<CovidModel>();

  ///fetch Data from API
  /// if success it will return data and set status is success
  /// else return data is  error
  Future<void> fetchDataFromApi() async {
    return homeRepository.getCase().then(
        (value) {
          cases(value);
          status(Status.success);
          }, onError: (error) {
      print("$error");
      return status(Status.error);
    });
  }

  /// When the controller is initialized, make the http request
  @override
  void onInit() => fetchDataFromApi();

}

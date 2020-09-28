import 'package:demogetx/src/page/home/domain/entity/case_model.dart';

abstract class IHomeRepository {
  Future<CovidModel> getCase();
}

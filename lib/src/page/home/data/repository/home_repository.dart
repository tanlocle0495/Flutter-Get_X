import 'package:demogetx/src/page/home/domain/adapters/repository_adapter.dart';
import 'package:demogetx/src/page/home/domain/entity/case_model.dart';
import 'package:dio/dio.dart';

class HomeRepository implements IHomeRepository {
  final Dio dio;
  final _url = "https://api.covid19api.com/summary";

  HomeRepository({this.dio});

  /// get list covid
  @override
  Future<CovidModel> getCase() async {
    try {
      final response = await dio.get(_url); // call API
      return CovidModel.fromJson(response.data as Map<String, dynamic>);
    } on Exception catch (e) {
      print("deguger + ${e.toString()}"); // print exception
      return Future.error(e.toString());
    }
  }
}

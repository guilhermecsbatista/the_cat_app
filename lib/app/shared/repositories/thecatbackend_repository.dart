import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:the_cat_app/app/shared/models/response_model.dart';

class TheCatBackendRepository extends Disposable {

  final Dio dio;

  TheCatBackendRepository(this.dio);

  Future<ResponseModel> fetchGet() async {

    dio.options.headers['authorization'] = DotEnv().env['THE_CAT_BACKEND_TOKEN'];
    
    final response = await dio.get('/v1/breeds');

    var result = ResponseModel.fromJson({ 'breeds': response.data});

    return result;
  }

    //dispose will be called automatically
  @override
  void dispose() {}
}
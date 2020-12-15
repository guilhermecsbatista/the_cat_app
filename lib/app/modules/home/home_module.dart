import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:the_cat_app/app/shared/repositories/thecatbackend_repository.dart';

import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(
              i.get<TheCatBackendRepository>(),
            )),
        Bind((i) => Dio(BaseOptions(
              baseUrl: DotEnv().env['THE_CAT_BACKEND_URL_BASE'],
              connectTimeout: 30000,
              receiveTimeout: 30000,
            ))),
        Bind((i) => TheCatBackendRepository(i.get<Dio>())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}

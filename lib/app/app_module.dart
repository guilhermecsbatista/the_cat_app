import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:the_cat_app/app/app_widget.dart';
import 'package:the_cat_app/app/modules/splash/splash_module.dart';

import 'app_controller.dart';
import 'modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: SplashModule()),
        ModularRouter('/home',
            module: HomeModule(), transition: TransitionType.fadeIn),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}

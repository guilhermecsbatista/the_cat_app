import 'package:the_cat_app/app/modules/splash/pages/splash/splash_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:the_cat_app/app/modules/splash/pages/splash/splash_page.dart';

class SplashModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashController()),
        Bind((i) => SplashController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => SplashPage()),
      ];

  static Inject get to => Inject<SplashModule>.of();
}

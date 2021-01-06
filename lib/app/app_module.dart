import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:interLibras/app/app_widget.dart';
import 'package:interLibras/app/modules/home/home_module.dart';

import 'modules/academy/academy_module.dart';
import 'modules/interpreter/interpreter_module.dart';
import 'modules/profile/profile_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
      ];

  @override
  List<ModularRouter> get routers => [
        // ModularRouter('/',child: (_,args)=>SplashPage()),
        ModularRouter('/home', module: HomeModule()),
        ModularRouter('/profile', module: ProfileModule()),
        ModularRouter('/interpreter', module: InterpreterModule()),
        ModularRouter('/academy', module: AcademyModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}

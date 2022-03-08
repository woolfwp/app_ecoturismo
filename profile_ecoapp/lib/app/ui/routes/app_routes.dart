import 'dart:js';

import 'package:flutter/widgets.dart' show BuildContext, Container, Widget;
import 'package:profile_ecoapp/app/ui/pages/home/dashboard.dart';
import 'package:profile_ecoapp/app/ui/pages/login/loginPage.dart';
import 'package:profile_ecoapp/app/ui/pages/register/register_page.dart';
import 'package:profile_ecoapp/app/ui/routes/routes.dart';

Map<String, Widget Function(BuildContext)> get appRoutes => {
      Routes.LOGIN: (_) => const LoginPage(),
      Routes.DESHBOARD: (_) => const Dashboard(),
      Routes.REGISTER: (_) => const RegisterPage(),
    };

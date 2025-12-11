// lib/router/app_router.dart
import 'package:flutter/material.dart';
import '../features/welcome/ui/welcome_screen.dart';
import '../features/wall/ui/kindness_wall_screen.dart';
import '../features/auth/ui/login_screen.dart';
import '../features/uplift/ui/uplift_screen.dart';

class AppRouter {
  static const initialRoute = routeWelcome; // 👈 define initial route
  static const routeWelcome = '/welcome';
  static const routeWall = '/wall';
  static const routeLogin = '/login';
  static const routeUplift = '/uplift';

  static Map<String, WidgetBuilder> routes = {
    routeWelcome: (context) => const WelcomeScreen(),
    routeWall: (context) {
      final userId = ModalRoute.of(context)!.settings.arguments as String?;
      return KindnessWallScreen(currentUserId: userId ?? 'guest');
    },
    routeLogin: (context) => const LoginScreen(),
    routeUplift: (context) => const UpliftScreen(),
  };
}
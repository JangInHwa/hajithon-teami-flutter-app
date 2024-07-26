import 'package:go_router/go_router.dart';
import 'package:hajithon_teami_flutter_app/pages/login/landing_screen.dart';
import 'package:hajithon_teami_flutter_app/pages/login/login_screen.dart';
import 'package:hajithon_teami_flutter_app/pages/login/register_screen.dart';

final GoRouter router = GoRouter(
  routes: _routes,
  initialLocation: '/',
  debugLogDiagnostics: true,
);

List<GoRoute> _routes = [
  GoRoute(
    path: '/',
    name: LandingScreen.routeName,
    builder: (_, __) => const LandingScreen(),
  ),
  GoRoute(
    path: '/login',
    name: LoginScreen.routeName,
    builder: (_, __) => const LoginScreen(),
  ),
  GoRoute(
    path: '/register',
    name: RegisterScreen.routeName,
    builder: (_, __) => const RegisterScreen(),
  ),
];

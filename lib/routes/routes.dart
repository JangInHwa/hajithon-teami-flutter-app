import 'package:go_router/go_router.dart';
import 'package:hajithon_teami_flutter_app/pages/login/login_screen.dart';

final GoRouter router = GoRouter(
  routes: _routes,
  initialLocation: '/login',
  debugLogDiagnostics: true,
);

List<GoRoute> _routes = [
  GoRoute(
    path: '/login',
    name: LoginScreen.routeName,
    builder: (_, __) => const LoginScreen(),
  ),
];

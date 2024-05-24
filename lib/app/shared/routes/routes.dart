import 'package:go_router/go_router.dart';
import 'package:intership_task/app/modules/bottomNav/persentation/bottom_navigation.dart';
import 'package:intership_task/app/modules/home/presentation/home_screen.dart';
import 'package:intership_task/app/modules/login/presentaion/login_screen.dart';
import 'package:intership_task/app/modules/onboarding/presentation/onboarding_screen.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: LoginScreen.routeName,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: HomeScreen.routeName,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: BottomNavWrapper.routeName,
      builder: (context, state) => const BottomNavWrapper(),
    ),
  ],
);

import 'package:comment_flutter_template/constants/routing_constants.dart';
import 'package:comment_flutter_template/view/application_main_pages/main_page/main_page.dart';
import 'package:comment_flutter_template/view/auth_pages/login_pages/login_page.dart';
import 'package:comment_flutter_template/view/auth_pages/sign_up_pages/sign_up_page.dart';
import 'package:comment_flutter_template/view/not_found_page.dart';
import 'package:comment_flutter_template/view/onboarding_pages/onboarding_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final GoRouter router;

  AppRouter()
      : router = GoRouter(
          routes: [
            GoRoute(
              path: RoutingConstants.home,
              builder: (context, state) => const MainPage(),
            ),
            GoRoute(
              path: RoutingConstants.login,
              builder: (context, state) => const LoginPage(),
            ),
            GoRoute(
              path: RoutingConstants.signup,
              builder: (context, state) => const SignUpPage(),
            ),
            GoRoute(
              path: RoutingConstants.onboarding,
              builder: (context, state) => const OnboardingPage(),
            ),
          ],
          errorBuilder: (context, state) => const NoPageFound(),
        );
}

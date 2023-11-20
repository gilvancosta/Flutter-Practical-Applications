// ignore_for_file: avoid_print

import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../ui/pages/home/home_page.dart';

import '../../ui/pages/seccion10/animated/animated_screen.dart';
import '../../ui/pages/seccion10/app_tutorial/app_tutorial_screen.dart';
import '../../ui/pages/seccion10/buttons/buttons_screen.dart';
import '../../ui/pages/seccion10/cards/cards_screen.dart';
import '../../ui/pages/seccion10/infinite_scroll/infinite_scroll_screen.dart';

import '../../ui/pages/seccion10/progress/progress_screen.dart';
import '../../ui/pages/seccion10/snackbar/snackbar_screen.dart';
import '../../ui/pages/seccion10/ui_controls/ui_controls_screen.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  print('appRouter!!!!');

  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/buttons',
        name: ButtonsScreen.name,
        builder: (context, state) => const ButtonsScreen(),
      ),
      GoRoute(
        path: '/cards',
        name: CardsScreen.name,
        builder: (context, state) => const CardsScreen(),
      ),
      GoRoute(
        path: '/progress',
        name: ProgressScreen.name,
        builder: (context, state) => const ProgressScreen(),
      ),
      GoRoute(
        path: '/snackbars',
        name: SnackbarScreen.name,
        builder: (context, state) => const SnackbarScreen(),
      ),
      GoRoute(
        path: '/animated',
        name: AnimatedScreen.name,
        builder: (context, state) => const AnimatedScreen(),
      ),
      GoRoute(
        path: '/ui-controls',
        name: UiControlsScreen.name,
        builder: (context, state) => const UiControlsScreen(),
      ),
      GoRoute(
        path: '/tutorial',
        name: AppTutorialScreen.name,
        builder: (context, state) => const AppTutorialScreen(),
      ),
      GoRoute(
        path: '/infinite',
        name: InfiniteScrollScreen.name,
        builder: (context, state) => const InfiniteScrollScreen(),
      ),
    ],
  );
}

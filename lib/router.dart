import 'package:flutter_widgets_playground/examples/google_maps/google_maps_example.dart';
import 'package:flutter_widgets_playground/examples/google_maps/google_maps_example_screen.dart';
import 'package:flutter_widgets_playground/home/home_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: GoogleMapsExample.staticPath,
      builder: (context, state) => const GoogleMapsExampleScreen(),
    ),
  ],
);

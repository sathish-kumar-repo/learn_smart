import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../data/card_list.dart';
import '../screens/home/home_screen.dart';
import '../screens/not_found/not_found_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SelectionArea(child: HomeScreen()),
    ),
    // Dynamically add all other course routes
    ...cardData.entries.expand((entry) {
      return entry.value.map((course) {
        return GoRoute(
          path: course.route,
          builder: (context, state) => course.page(),
        );
      });
    }).toList(),
  ],
  // Optional error page
  errorBuilder: (context, state) => const NotFoundPage(),
);

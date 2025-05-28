import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_smart/screens/other/about_screen.dart';
import 'package:learn_smart/screens/other/contact_screen.dart';
import 'package:learn_smart/screens/other/privacy_policy_screen.dart';
import 'package:learn_smart/screens/other/terms_screen.dart';
import '../data/card_list.dart';
import '../screens/home/home_screen.dart';
import '../screens/other/not_found_screen.dart';

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
    GoRoute(
      path: '/about',
      builder: (context, state) => AboutScreen(),
    ),
    GoRoute(
      path: '/contact',
      builder: (context, state) => ContactScreen(),
    ),
    GoRoute(
      path: '/privacy_policy',
      builder: (context, state) => PrivacyPolicyScreen(),
    ),
    GoRoute(
      path: '/terms',
      builder: (context, state) => TermsScreen(),
    ),
  ],
  // Optional error page
  errorBuilder: (context, state) => const NotFoundPage(),
);

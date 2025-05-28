import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

// Top-level menu list
final _menuList = [
  WebMenu.home,
  WebMenu.wellora,
  WebMenu.flutter_widgets,
  WebMenu.github,
];

enum WebMenu {
  home,
  wellora,
  flutter_widgets,
  github,
}

// Top-level functions
void _launchMenu(WebMenu menu, BuildContext context) {
  switch (menu) {
    case WebMenu.home:
      context.go('/');
      break;
    case WebMenu.wellora:
      _launchUrl('https://sathish-kumar-repo.github.io/study/');
      break;
    case WebMenu.flutter_widgets:
      _launchUrl('https://sathish-kumar-repo.github.io/Flutter-Widgets-Live/');
      break;
    case WebMenu.github:
      _launchUrl('https://github.com/sathish-kumar-repo/');
      break;
  }
}

Future<void> _launchUrl(String uri) async {
  final Uri url = Uri.parse(uri);
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

String _getMenuName(WebMenu menu) {
  switch (menu) {
    case WebMenu.home:
      return 'Home';
    case WebMenu.wellora:
      return 'Wellora';
    case WebMenu.flutter_widgets:
      return 'Flutter Widgets';
    case WebMenu.github:
      return 'GitHub';
  }
}

IconData _getMenuIcon(WebMenu menu) {
  switch (menu) {
    case WebMenu.home:
      return Icons.home;
    case WebMenu.wellora:
      return Icons.health_and_safety;
    case WebMenu.flutter_widgets:
      return Icons.widgets;
    case WebMenu.github:
      return Icons.code;
  }
}

// WebMenuUtils utility wrapper
class WebMenuUtils {
  static String getMenuName(WebMenu menu) => _getMenuName(menu);
  static IconData getMenuIcon(WebMenu menu) => _getMenuIcon(menu);
  static void launchMenu(WebMenu menu, BuildContext context) =>
      _launchMenu(menu, context);
  static List<WebMenu> get menuList => _menuList;
}

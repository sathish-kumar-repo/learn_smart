import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FooterMenu extends StatefulWidget {
  const FooterMenu({super.key});

  @override
  State<FooterMenu> createState() => _FooterMenuState();
}

class _FooterMenuState extends State<FooterMenu> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        menuItems("Privacy policy"),
        menuItems("Contact"),
        menuItems("About"),
        menuItems("Terms"),
      ],
    );
  }

  Padding menuItems(name) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: () {
          _goRoute(name);
        },
        child: Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  void _goRoute(String name) {
    switch (name) {
      case "Privacy policy":
        context.go('/privacy_policy');
        break;
      case "Contact":
        context.go('/contact');
        break;
      case "About":
        context.go('/about');
        break;
      case "Terms":
        context.go('/terms');
        break;
    }
  }
}

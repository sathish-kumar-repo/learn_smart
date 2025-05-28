import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../widgets/responsive.dart';
import 'header_web_menu.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Site name and icon
        MyLogo(),
        SizedBox(width: 10),
        MyBrand(),
        const Spacer(),
        if (Responsive.isDesktop(context))
          const HeaderWebMenu()
        else
          Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          ),
      ],
    );
  }
}

class MyBrand extends StatelessWidget {
  const MyBrand({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.go('/');
      },
      child: Text(
        "Code Pro",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}

class MyLogo extends StatelessWidget {
  const MyLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/logo/logo_android_1024x1024.png",
      height: 50,
      width: 50,
    );
  }
}

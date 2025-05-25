import 'package:flutter/material.dart';

import '../../../../widgets/responsive.dart';
import 'header.dart';
import 'header_container.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(8),
      decoration: gradientDecoration(),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            constraints: const BoxConstraints(maxWidth: 1233),
            child: Column(
              children: [
                // Header icon and name
                const Header(),
                Responsive.isDesktop(context)
                    ? const HeaderContainer()
                    : const MobileHeaderContainer(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

BoxDecoration gradientDecoration() {
  return const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Color.fromARGB(255, 120, 187, 241),
        // Color.fromARGB(255, 145, 211, 22),
        Colors.deepPurpleAccent,
      ],
    ),
  );
}

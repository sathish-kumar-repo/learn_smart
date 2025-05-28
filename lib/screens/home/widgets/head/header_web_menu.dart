import 'package:flutter/material.dart';
import 'package:learn_smart/utils/web_menu_utils.dart';

class HeaderWebMenu extends StatelessWidget {
  const HeaderWebMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: WebMenuUtils.menuList.map((menu) {
        return menuItems(menu, context);
      }).toList(),
    );
  }

  Padding menuItems(WebMenu menu, BuildContext context) {
    String name = WebMenuUtils.getMenuName(menu);
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: () {
          WebMenuUtils.launchMenu(menu, context);
        },
        child: Text(
          name,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../utils/web_menu_utils.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Sathish Kumar"),
            accountEmail: Text("sathish08032006@gmail.con"),
            currentAccountPicture: ClipOval(
              child: Image(
                image: NetworkImage(
                  "https://sathish-kumar-repo.github.io/study/web-images/profile.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgJLOn3IcO_61EyNeYniN2N2GidJbMHRXVhzjSgYIYvg&s"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ...WebMenuUtils.menuList.map((menu) {
            return ListTile(
              onTap: () {
                WebMenuUtils.launchMenu(menu, context);
              },
              title: Text(WebMenuUtils.getMenuName(menu)),
              leading: Icon(WebMenuUtils.getMenuIcon(menu)),
            );
          }).toList(),
        ],
      ),
    );
  }
}

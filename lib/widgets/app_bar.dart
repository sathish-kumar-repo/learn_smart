import 'package:flutter/material.dart';
import 'package:learn_smart/screens/home/widgets/head/header.dart';
import 'package:learn_smart/widgets/code_pro.dart';
import 'back_btn.dart';
import 'responsive.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      padding: const EdgeInsets.all(8),
      child: Container(
        padding: const EdgeInsets.all(10),
        constraints: const BoxConstraints(maxWidth: 1233),
        child: Row(
          children: [
            if (Navigator.of(context).canPop())
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: BackBtn(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            MyBrand(),
            Spacer(),
            if (!Responsive.isDesktop(context))
              Builder(
                builder: (context) => GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: const Icon(
                    Icons.clear_all,
                    color: Colors.white,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}

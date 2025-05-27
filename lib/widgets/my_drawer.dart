import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../modal/topics.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
    required this.activeIndex,
    required this.topicsName,
    required this.img,
    this.contain = false,
  });

  final int activeIndex;
  final List<Topics> topicsName;
  final String img;
  final bool contain;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ScrollablePositionedList.builder(
        padding: const EdgeInsets.all(0),
        physics: BouncingScrollPhysics(),
        initialScrollIndex: activeIndex - 1,
        itemCount: topicsName.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final isCurrentItem = (activeIndex - 1) == index;
          return Column(
            children: [
              if (index == 0)
                DrawerHeader(
                  child: Image.asset(
                    'assets/images/$img',
                    fit: contain ? BoxFit.contain : BoxFit.cover,
                  ),
                ),
              GestureDetector(
                child: ListTile(
                  title: Text(
                    topicsName[index].topics,
                    style: TextStyle(
                      fontSize: 20,
                      color: isCurrentItem
                          ? Theme.of(context).colorScheme.primary
                          : Colors.black,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: isCurrentItem
                        ? Theme.of(context).colorScheme.primary
                        : Colors.black54,
                  ),
                  subtitle: Text(
                    topicsName[index].subTopics,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => topicsName[index].pages,
                    ),
                  );
                },
              )
            ],
          );
        },
      ),
    );
  }
}

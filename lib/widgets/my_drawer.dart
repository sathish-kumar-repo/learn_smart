import 'package:flutter/material.dart';
import 'package:learn_smart/data/clr_list.dart';
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
        physics: BouncingScrollPhysics(),
        initialScrollIndex: activeIndex - 1,
        itemCount: topicsName.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          var randomItem = (randomColor.toList()..shuffle()).first;
          final isCurrentItem = (activeIndex - 1) == index;
          return Column(
            children: [
              const Divider(height: 0.1),
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
                    Icons.school,
                    color: randomItem,
                  ),
                  subtitle: Text(
                    topicsName[index].subTopics,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(
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

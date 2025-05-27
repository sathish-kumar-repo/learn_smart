import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/web/CSS/TopicName/cssTopics.dart';

class DisplayProperty extends StatefulWidget {
  const DisplayProperty({Key? key}) : super(key: key);

  @override
  State<DisplayProperty> createState() => _DisplayPropertyState();
}

class _DisplayPropertyState extends State<DisplayProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 14,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: const MyPage(
        children: [
          H1('CSS Display Properties'),
          P('In CSS, the display property is used to define how an element should be rendered and laid out on a web page. It determines the type of box an element generates and how it interacts with other elements.'),
          P('The display CSS property sets whether an element is treated as a block or inline element and the layout used for its children, such as flow layout, grid or flex. Formally, the display property sets an element\'s inner and outer display types'),
          P('There are several common display property values:'),
          H3('block:'),
          Li('The element generates a block-level box. It starts on a new line and takes up the full width available.'),
          H3('inline:'),
          Li('The element generates an inline-level box. It does not start on a new line and only occupies the space necessary for its content.'),
          H3('inline-block:'),
          Li('The element generates a combination of inline and block-level behavior. It flows as an inline-level element but allows width, height, padding, and margin settings.'),
          H3('none:'),
          Li('The element is not displayed on the page. It is completely removed from the document flow and occupies no space.'),
          H3('flex:'),
          Li('The element becomes a flexible container. It enables flexible layouts using flexbox, allowing easy alignment and distribution of child elements.'),
          H3('grid:'),
          Li(' The element becomes a grid container. It enables grid-based layouts using CSS grid, providing powerful grid-based alignment and positioning capabilities.'),
        ],
      ),
    );
  }
}

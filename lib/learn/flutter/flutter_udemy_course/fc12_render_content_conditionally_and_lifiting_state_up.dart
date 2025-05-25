import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/flutter/flutter_udemy_course/topicsName/flutterCourseTopics.dart';

class FCRenderContentConditionallyandLiftingStateUp extends StatefulWidget {
  const FCRenderContentConditionallyandLiftingStateUp({Key? key})
      : super(key: key);

  @override
  State<FCRenderContentConditionallyandLiftingStateUp> createState() =>
      _FCRenderContentConditionallyandLiftingStateUpState();
}

class _FCRenderContentConditionallyandLiftingStateUpState
    extends State<FCRenderContentConditionallyandLiftingStateUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 12,
        topicsName: flutterCourseTopics,
        img: 'flutterConceptsI.jpg',
      ),
      body: const MyPage(
        children: [
          H1('Render Content Conditionally and Lifting State Up'),
          Img(name: 'rcc_lsu.png'),
          Img(name: 'lifiting.png'),
          Img(name: 'again_lftup.png'),
          Img(name: 'shared_parent_widget.png'),
          Img(name: 'using_functions_as_arg.png'),
        ],
      ),
    );
  }
}

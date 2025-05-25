import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/flutter/flutter_udemy_course/topicsName/flutterCourseTopics.dart';

class FCSetup extends StatefulWidget {
  const FCSetup({Key? key}) : super(key: key);

  @override
  State<FCSetup> createState() => _FCSetupState();
}

class _FCSetupState extends State<FCSetup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 2,
        topicsName: flutterCourseTopics,
        img: 'flutterConceptsI.jpg',
      ),
      body: const MyPage(
        children: [
          H1('Flutter Setup'),
          H3('Flutter SDK'),
          P('For manging Flutter projects'),
          H3('Git'),
          P('Version control software, used internally by Flutter SDK'),
          P('Generally totally independent from flutter'),
          P('But flutter, these Flutter tools which you will also install actually use this Git software internally'),
          H3('Platform Tools'),
          H4('Android Studio'),
          Li('Used by Flutter SDK & needed for Android app deployment'),
          H4('XCode'),
          Li('Used by Flutter SDK & needed for IOS app deployment'),
          H3('Virtual Devices'),
          H4('Android'),
          P('Preview Flutter apps on virtual Android devices'),
          H4('XCode'),
          P('Preview Flutter apps on virtual iOS devices'),
          H3('Full setup and Configuration'),
          Link('https://docs.flutter.dev/get-started/install/'),
          H3('Additional Configuration'),
          Li('Change Android SDK Location c:/Android/SDK'),
          Note(
              'The Android SDK Manager helps you download the SDK tools, platforms, and other components you need to develop your apps. Once downloaded, you can find each package in the directory indicated as the Android SDK Location'),
        ],
      ),
    );
  }
}

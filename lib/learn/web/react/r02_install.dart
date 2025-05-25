import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/web/react/topicsName/reactTopics.dart';

class ReactInstall extends StatefulWidget {
  const ReactInstall({Key? key}) : super(key: key);

  @override
  State<ReactInstall> createState() => _ReactInstallState();
}

class _ReactInstallState extends State<ReactInstall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 2,
        topicsName: reactjsTopics,
        img: 'Reactt.png',
      ),
      body: const MyPage(
        children: [
          H1('How to install React JS ?'),
          P('Using Vite(Frontend tooling kit)'),
          OLi(no: 1, 'Go vitejs.dev'),
          OLi(no: 2, 'npm create vite@latest'),
          OLi(no: 3, 'type project name'),
          OLi(no: 4, 'Choose your framework(React)'),
          OLi(no: 5, 'Select a variant(JavaScript)'),
          OLi(no: 6, 'cd class1'),
          OLi(no: 7, 'npm install'),
          OLi(no: 8, 'npm run dev'),
          Note('Install extension \n"ES7+ React/Redux/React-Native snippets"')
        ],
      ),
    );
  }
}

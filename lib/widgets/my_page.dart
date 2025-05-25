import 'package:flutter/material.dart';

import 'responsive.dart';

class MyPage extends StatelessWidget {
  const MyPage({
    super.key,
    required this.children,
  });
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    final drawer = Scaffold.of(context).widget.drawer;
    return Responsive(
      desktop: Row(
        children: [
          if (drawer != null)
            Expanded(
              child: drawer,
              flex: 1,
            ),
          Expanded(
            child: _buildView(),
            flex: 3,
          ),
        ],
      ),
      mobile: _buildView(),
    );
  }

  SingleChildScrollView _buildView() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
        width: double.infinity,
        child: SelectionArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        ),
      ),
    );
  }
}

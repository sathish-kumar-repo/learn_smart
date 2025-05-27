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
            child: _buildView(context),
            flex: 3,
          ),
        ],
      ),
      mobile: _buildView(context),
    );
  }

  Widget _buildView(BuildContext context) {
    return SelectionArea(
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children,
            ),
          ),
        ),
      ),
    );
  }
}

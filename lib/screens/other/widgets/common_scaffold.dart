import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_smart/widgets/back_btn.dart';

class CommonScaffold extends StatelessWidget {
  final String title;
  final Widget body;

  const CommonScaffold({required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackBtn(
          onTap: () {
            context.go('/');
          },
        ),
        title: Text(title),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: body,
      ),
    );
  }
}

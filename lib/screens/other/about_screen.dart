import 'package:flutter/material.dart';
import 'widgets/common_scaffold.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title: 'About Code Pro',
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome to Code Pro!",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 12),
            Text(
              "This website contains my personal coding experiments, tutorials, and learning projects. "
              "I built Code Pro to organize and share my journey in software development.",
            ),
          ],
        ),
      ),
    );
  }
}

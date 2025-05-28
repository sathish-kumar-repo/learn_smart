import 'package:flutter/material.dart';

import 'widgets/common_scaffold.dart';

class TermsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title: 'Terms and Conditions',
      body: SingleChildScrollView(
        child: Text(
          "By using Code Pro, you agree to use this website solely for learning and personal use. "
          "All code is provided as-is, without warranty. You are responsible for how you use any code found here.",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}

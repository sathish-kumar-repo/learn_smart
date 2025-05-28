import 'package:flutter/material.dart';
import 'widgets/common_scaffold.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title: 'Privacy Policy',
      body: SingleChildScrollView(
        child: Text(
          "We respect your privacy. Code Pro does not collect any personal data from users. "
          "We do not track or share any information with third parties. This website is for educational purposes only.",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}

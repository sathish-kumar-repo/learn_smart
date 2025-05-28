import 'package:flutter/material.dart';
import 'widgets/common_scaffold.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title: 'Contact Us',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Have a question or suggestion?",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(height: 12),
          Text("Email: sathish08032006@gmail.com"),
          SizedBox(height: 5),
          Text("GitHub: github.com/sathish-kumar-repo/"),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class OverflowBarWidget extends StatelessWidget {
  const OverflowBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OverflowBar Widget"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        // this widget mix between row and column widget
        child: OverflowBar(
          spacing: 8,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Learn Smart'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Learn Smart'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Learn Smart'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Learn Smart'),
            ),
          ],
        ),
      ),
    );
  }
}

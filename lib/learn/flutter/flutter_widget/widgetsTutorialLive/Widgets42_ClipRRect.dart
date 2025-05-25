import 'package:flutter/material.dart';

class ClipRRectWidget extends StatelessWidget {
  const ClipRRectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ClipRRect Widget"),
        centerTitle: true,
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            'assets/icon/ocean.jpg',
            width: 350,
          ),
        ),
      ),
    );
  }
}

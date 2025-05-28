import 'package:flutter/material.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        size: 20,
        Icons.arrow_back_ios,
        color: Colors.white,
      ),
    );
  }
}

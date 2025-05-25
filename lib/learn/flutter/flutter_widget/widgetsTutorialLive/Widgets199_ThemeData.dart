import 'package:flutter/material.dart';

class ThemeDataWidget extends StatelessWidget {
  const ThemeDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.redAccent,
        primaryColor: Colors.orangeAccent,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.redAccent,
        primaryColor: Colors.orangeAccent,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ThemeData Widget"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}

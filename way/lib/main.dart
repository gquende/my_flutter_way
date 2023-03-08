import 'package:flutter/material.dart';
import 'package:way/core/inject/inject.dart';

void main() {
  Inject.init();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Car App"),
        ),
        body: Center(
          child: Text("Home..."),
        ),
      ),
    );
  }
}

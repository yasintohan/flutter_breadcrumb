import 'package:breadcrumb_example/utils/app_navigator_observer.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorObservers: [AppNavigatorObserver()],
      title: 'Flutter Breadcrumb Demo',
      home: const Material(child: HomePage()),
    );
  }
}

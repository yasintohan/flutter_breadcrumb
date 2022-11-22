import 'package:breadcrumb_example/pages/dashboard_page.dart';
import 'package:breadcrumb_example/pages/profile_page.dart';
import 'package:breadcrumb_example/widgets/breadcrumb_builder.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          children: [
            BreadCrumbBuilder(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              settings: const RouteSettings(name: 'Profile'),
                              builder: (context) => const ProfilePage()));
                    },
                    child: const Text("Profile Page"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              settings: const RouteSettings(name: 'Dashboard'),
                              builder: (context) => const DashboardPage()));
                    },
                    child: const Text("Dashboard Page"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

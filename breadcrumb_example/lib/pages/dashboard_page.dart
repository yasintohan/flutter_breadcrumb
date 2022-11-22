import 'package:breadcrumb_example/pages/detail_page.dart';
import 'package:flutter/material.dart';

import '../widgets/breadcrumb_builder.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: Center(
        child: Column(
          children: [
            BreadCrumbBuilder(),
            Expanded(
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            settings: const RouteSettings(name: 'Detail'),
                            builder: (context) => const DetailPage()));
                  },
                  child: const Text("Detail Page"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

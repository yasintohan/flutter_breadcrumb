import 'package:flutter/material.dart';
import '../widgets/breadcrumb_builder.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      body: Column(
        children: [
          BreadCrumbBuilder(),
          const Expanded(
            child: Center(
              child: Text("Detail page content"),
            ),
          ),
        ],
      ),
    );
  }
}

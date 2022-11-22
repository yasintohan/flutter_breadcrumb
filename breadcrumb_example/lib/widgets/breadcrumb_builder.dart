import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
import '../utils/app_navigator_observer.dart';

class BreadCrumbBuilder extends StatelessWidget {
  final List<Route> currentRouteStack = routeStack.toList();

  BreadCrumbBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BreadCrumb.builder(
      overflow: ScrollableOverflow(),
      itemCount: currentRouteStack.length,
      builder: (index) => breadCrumbItem(
        index,
        currentRouteStack[index],
        context,
      ),
      divider: const Icon(
        Icons.chevron_right,
        color: Colors.blue,
      ),
    );
  }

  BreadCrumbItem breadCrumbItem(int index, Route route, BuildContext context) {
    return BreadCrumbItem(
      content: GestureDetector(
        onTap: () {
          Navigator.popUntil(context, (r) => r == route);
        },
        child: Text(
          index == 0 ? routeStackFirstName : route.settings.name.toString(),
        ),
      ),
    );
  }
}

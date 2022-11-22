import 'package:flutter/material.dart';

List<Route> routeStack = [];
String routeStackFirstName = "Home";

class AppNavigatorObserver extends RouteObserver {

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    routeStack.add(route);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    routeStack.remove(route);
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didRemove(route, previousRoute);
    routeStack.remove(route);
  }

  @override
  void didReplace({ Route<dynamic>? newRoute, Route<dynamic>? oldRoute }) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    final index = routeStack.indexOf(oldRoute!);
    routeStack[index] = newRoute!;
  }
}
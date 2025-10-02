import 'package:anime_live/app_routing/route_names.dart';
import 'package:anime_live/app_routing/routing_data.dart';
import 'package:anime_live/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';


class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    var uriData = Uri.parse(settings.name!);

    var routingData = RoutingData(
      queryParameters: uriData.queryParameters,
      route: uriData.path,
    );
    // ignore: unused_local_variable
    Map<String, dynamic> parameters = {};

    if (settings.arguments is Map<String, dynamic>) {
      parameters = settings.arguments as Map<String, dynamic>;
    } else if (settings.arguments != null) {
      // Store non-map arguments under a generic key
      parameters['value'] = settings.arguments;
    }

    switch (routingData.route) {
      case RouteNames.bottomNavBar:
        return _getPageRoute(const HomeScreen(), settings);
     
      default:
        return _getPageRoute(Container(), settings);
    }
  }
}

Route _getPageRoute(
  Widget child,
  RouteSettings settings, {
  bool? translateFromBottom,
}) {
  return animationSwitch(
    translateFromBottom ?? false,
    destination: child,
    routeName: settings.name!,
  );
}

class _FadeRoute extends PageRouteBuilder {
  final Widget? child;
  final String? routeName;
  final bool? translateFromBottom;

  _FadeRoute({this.child, this.routeName, this.translateFromBottom = false})
    : super(
        settings: RouteSettings(name: routeName),
        pageBuilder:
            (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) => child!,
        transitionsBuilder:
            (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) => SlideTransition(
              position: Tween<Offset>(
                begin: translateFromBottom ?? false
                    ? const Offset(0, 1)
                    : const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            ),
      );
}

Route animationSwitch(
  bool translateFromBottom, {
  required Widget destination,
  required String routeName,
}) {
  return CupertinoPageRoute(
    settings: RouteSettings(name: routeName),
    builder: (BuildContext context) => destination,
    fullscreenDialog:
        translateFromBottom, // enables modal transition from bottom
    maintainState: true,
  );
}

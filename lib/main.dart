import 'package:flutter/material.dart';
import 'package:flutter_application_2/page/appbar_custom.dart';
import 'package:flutter_application_2/page/nextpage.dart';
import 'package:flutter_switch/flutter_switch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static var title = 'Shop_Motocircle';

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return SlideRightRoute(widget:appbarcustom());
            break;
          case '/second':
            return SlideRightRoute(widget:SecondPage());
            break;
          case '/third':
            return SlideRightRoute(widget:ThirdPage());
            break;  
        }
  },
     
    );
     
  }
}

class SlideRightRoute extends PageRouteBuilder {
  final Widget widget;
  SlideRightRoute({required this.widget})
      : super(
    pageBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      return widget;
    },
    transitionsBuilder: (BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child) {
      return new SlideTransition(
        position: new Tween<Offset>(
          begin: const Offset(1.0, 0.0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
    },
  );
}

class MyHomePage extends StatefulWidget {
  final String title;
  // ignore: use_key_in_widget_constructors
  const MyHomePage({
    required this.title,
  });

  @override
  State<MyHomePage> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottom_builder(),
      body: build_Pages(),
    );
  }

  // ignore: non_constant_identifier_names
  Widget bottom_builder() {
    return BottomNavigationBar(
        currentIndex: index,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            // ignore: deprecated_member_use
            label: 'Cua Hang',
          ),
        ],
        onTap: (int index) => setState(() => this.index = index));
  }

  // ignore: non_constant_identifier_names
  @override
  Widget build_Pages() {
    switch (index) {
      case 0:
        return appbarcustom();
      case 1:
        return nextpage();
      default:
        return Container();
    }
  }
}

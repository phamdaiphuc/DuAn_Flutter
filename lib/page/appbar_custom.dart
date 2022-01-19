import 'package:flutter_application_2/main.dart';
import "package:flutter/material.dart";

// ignore: camel_case_types
class appbarcustom extends StatefulWidget {
  @override
  _appbarcustom createState() => _appbarcustom();
}

class _appbarcustom extends State<appbarcustom> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
            title: const Text('xin chao'),
            actions: <Widget>[
              IconButton(
                  icon: const Icon(Icons.train),
                  onPressed: () => {print('xin chao')}),
              PopupMenuButton(
                  icon: const Icon(Icons.share),
                  itemBuilder: (context) => [
                        const PopupMenuItem(
                          value: 1,
                          child: Text("facebook"),
                        ),
                        const PopupMenuItem(
                          value: 2,
                          child: Text('Instagram'),
                        )
                      ]),
            ],
            bottom: const TabBar(
              //isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              // ignore: prefer_const_literals_to_create_immutables
              tabs: [
                Tab(icon: Icon(Icons.home), text: 'Home'),
                Tab(icon: Icon(Icons.star), text: 'Feed'),
                Tab(icon: Icon(Icons.face), text: 'Profile'),
                Tab(icon: Icon(Icons.settings), text: 'Settings'),
              ],
            ),
            automaticallyImplyLeading: true),
        drawer: Drawer(
          child: ListView(children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Text(
                'Gioi Thieu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Trang Chu',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Gioi Thieu',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
                title: Text('Trang Chu',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 20,
                    ))),
          ]),
        ),
      ),
    );
    // ignore: dead_code
    
  }
}

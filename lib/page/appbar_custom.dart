// ignore_for_file: deprecated_member_use

import 'package:flutter_application_2/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
// ignore: camel_case_types
class appbarcustom extends StatefulWidget {
  @override
  _appbarcustom createState() => _appbarcustom();
}

class _appbarcustom extends State<appbarcustom> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
              centerTitle:true,
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
                  Tab(
                    icon: Icon(Icons.home),
                    text: 'Home',
                  ),
                  Tab(icon: Icon(Icons.star), text: 'Feed'),
                  Tab(icon: Icon(Icons.face), text: 'Profile'),
                  Tab(icon: Icon(Icons.settings), text: 'Settings'),
                ],
              ),
              automaticallyImplyLeading: true),
          drawer: Drawer(
            child: ListView(children: [
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
              TextButton(
                onPressed: () => Navigator.pushNamed(context, '/'),
                child: Text('Trang 1 '),
              ),
             
              RaisedButton(
                onPressed: () => Navigator.pushNamed(context, '/second'),
                child: Text('Trang 2 '),
              ),
              OutlinedButton(
                onPressed: () => Navigator.pushNamed(context, '/third'),
                child: Text('Trang 3 '),
              ),
            ]),
          ),
          body: TabBarView(children: [
            //phan nay thanh phan cua tab 
            //co them thanh phan vao day 
            Center(
             child: Container(
               child: Card(
                 
               ),
                
                  ),
                ),
            
             Center(
             child: Text('Trang2'),
            ),
             Center(
             child: Text('Trang3'),
            ),
             Center(
             child: Text('Trang4'),
            ),
          ]
          )
          ),
    );
    // ignore: dead_code
  }
}

class PPUIHelper {
}


class FistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('xin chap nguoi anh em '),
      ),
      body: ListView(children: [
        RaisedButton(
          onPressed: () => Navigator.pushNamed(context, '/second'),
          child: Text('Trang 1 '),
        ),
        RaisedButton(
          onPressed: () => Navigator.pushNamed(context, '/third'),
          child: Text('Trang 2 '),
        ),
      ]),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Day La Trang 1 '),
          backgroundColor: Colors.yellow,
        ),
        body: Center(
            child: RaisedButton(onPressed: () => Navigator.pop(context, '/'))));
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Day La Trang 2 '),
          backgroundColor: Colors.red,
        ),
        body: Center(
            child: RaisedButton(onPressed: () => Navigator.pop(context, '/'))));
  }
}
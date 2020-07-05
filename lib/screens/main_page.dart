import 'package:appbook/screens/all_apps_page.dart';
import 'package:appbook/screens/home_page.dart';
import 'package:appbook/screens/my_apps_page.dart';
import 'package:appbook/data/static_data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  MainPage() {}

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'AppBook',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
                appBar: AppBar(
                  title: Text('AppBook'),
                  bottom: TabBar(
                    tabs: <Widget>[
                      Tab(
                        text: 'Home',
                        icon: Icon(Icons.home),
                      ),
                      Tab(text: 'My Apps', icon: Icon(Icons.favorite)),
                      Tab(text: 'All Apps', icon: Icon(Icons.apps))
                     
                    ],
                  ),
                ),
                body: TabBarView(
                  children: <Widget>[HomePage(), MyAppsPage(), AllAppsPage()],
                ))));
  }
}

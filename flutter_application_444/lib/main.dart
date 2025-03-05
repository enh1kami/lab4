import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Lab',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Lab'),
          bottom: TabBar(
            tabs: [
              Tab(text: "ListView"),
              Tab(text: "GridView"),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
              ListTile(title: Text('Home'), onTap: () {}),
              ListTile(title: Text('Profile'), onTap: () {}),
              ListTile(title: Text('Settings'), onTap: () {}),
              ListTile(title: Text('Logout'), onTap: () {}),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Item ${index + 1}'),
                  subtitle: Text('Subtitle ${index + 1}'),
                );
              },
            ),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(8),
                  color: Colors.primaries[index % Colors.primaries.length],
                  child: Center(
                    child: Text(
                      '${index + 1}',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // ignore: unused_local_variable
            var showToast = Fluttertoast.showToast(msg: "Hello, Flutter!", gravity: ToastGravity.BOTTOM);
          },
          child: Icon(Icons.message),
        ),
      ),
    );
  }
}

class BOTTOM {
}



class ToastGravity {
  // ignore: prefer_typing_uninitialized_variables, non_constant_identifier_names
  static var BOTTOM;
}

class Fluttertoast {
  static showToast({required String msg, required gravity}) {}
}

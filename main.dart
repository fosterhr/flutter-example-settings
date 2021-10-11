import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SettingsLayout(),
  ));
}

class SettingsLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Settings"),),
        body: userList(context),
      ),
    );
  }

  Widget userList(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("General"),
          trailing: Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => FooLayout(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Account"),
          trailing: Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => FooLayout(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.lock),
          title: Text("Security"),
          trailing: Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => FooLayout(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.wb_sunny),
          title: Text("Display"),
          trailing: Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => FooLayout(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.notifications),
          title: Text("Notifications"),
          trailing: Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => FooLayout(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.adb),
          title: Text("Automation"),
          trailing: Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => FooLayout(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
      ],
    );
  }
}

class FooLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Title"),
          leading: new IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Text("foo"),
        ),
      ),
    );
  }
}

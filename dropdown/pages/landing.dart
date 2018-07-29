import 'package:flutter/material.dart';



class User {
  const User(this.name);

  final String name;
}

class MyApp extends StatefulWidget {
  State createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  User selectedUser;
  List<User> users = <User>[const User('I'), const User('II'),const User('III'),const User('IV'),const User('V'),const User('VI'),const User('VII'),const User('VIII')];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new Center(
          child: new DropdownButton<User>(
            hint: new Text("Select a semester"),
            value: selectedUser,
            onChanged: (User newValue) {
              setState(() {
                selectedUser = newValue;
              });
            },
            items: users.map((User user) {
              return new DropdownMenuItem<User>(
                value: user,
                child: new Text(
                  user.name,
                  style: new TextStyle(color: Colors.black),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

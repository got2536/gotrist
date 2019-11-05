import 'package:flutter/material.dart';
import 'package:gotrist/models/user_model.dart';
import 'package:gotrist/widget/page1.dart';
import 'package:gotrist/widget/page2.dart';
import 'package:gotrist/widget/page3.dart';

class MyService extends StatefulWidget {
  final UserModel userModel;
  MyService({Key key, this.userModel}) : super(key: key);
  @override
  _MyServiceState createState() => _MyServiceState();
}

class _MyServiceState extends State<MyService> {
  // Explicit
  String loginString = '';
  UserModel myUserModel;
  Widget currentWidget = Page1();

  // Method
  @override
  void initState() {
    super.initState();
    myUserModel = widget.userModel;
    String name = myUserModel.name;
    String surname = myUserModel.surName;
    loginString = '$name $surname';
  }

  Widget menuPage1() {
    return ListTile(
      leading: Icon(Icons.android),
      title: Text('Page 1'),
      subtitle: Text('คำอธิบาย Page1'),
      onTap: () {
        setState(() {
         currentWidget = Page1(); 
        });
        Navigator.of(context).pop();
      },
    );
  }

  Widget menuPage2() {
    return ListTile(
      leading: Icon(
        Icons.android,
        size: 20.0,
        color: Colors.red,
      ),
      title: Text('Page 2'),
      subtitle: Text('คำอธิบาย Page2'),
      onTap: () {
        setState(() {
         currentWidget = Page2(); 
        });
        Navigator.of(context).pop();
      },
    );
  }

  Widget menuPage3() {
    return ListTile(
      leading: Icon(
        Icons.android,
        size: 20.0,
        color: Colors.blue,
      ),
      title: Text('Page 3'),
      subtitle: Text('คำอธิบาย Page3'),
      onTap: () {
        setState(() {
         currentWidget = Page3(); 
        });
        Navigator.of(context).pop();
      },
    );
  }

  Widget showLogin() {
    return Text('Login by $loginString');
  }

  Widget showAppName() {
    return Text('Got Rist');
  }

  Widget showLogo() {
    return Container(
        width: 80.0, height: 80.0, child: Image.asset("images/logo.png"));
  }

  Widget showHeadDrawer() {
    return DrawerHeader(
      child: Column(
        children: <Widget>[
          showLogo(),
          showAppName(),
          showLogin(),
        ],
      ),
    );
  }

  Widget showDrawer() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          showHeadDrawer(),
          menuPage1(),
          Divider(),
          menuPage2(),
          Divider(),
          menuPage3(),
          Divider(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Service'),
      ),
      body: currentWidget,
      drawer: showDrawer(),
    );
  }
}

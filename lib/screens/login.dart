import 'package:flutter/material.dart';
import 'package:myfirstapp/constant/color.dart';
import 'package:myfirstapp/screens/phonenum.dart';

class loginscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: AppBar(
            backgroundColor: Red,
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/zindagi.png',
                  height: 100,
                  width: 100,
                ),
                Text('ZINDAGI', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'LOGIN',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Email',
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: 'Password',
            ),
            obscureText: true,
          ),
          SizedBox(height: 20),
          ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => phonenum()),
    );
  },
  style: ElevatedButton.styleFrom(
    primary: Red, 
    minimumSize: Size(150, 40),
  ),
  child: Text('SIGN IN'),
)

        ],
      ),
    );
  }
}

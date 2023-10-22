import 'package:flutter/material.dart';
import 'package:myfirstapp/constant/color.dart';
import 'package:myfirstapp/screens/map.dart';

class Verify extends StatefulWidget {
  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
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
                'PHONE VERIFICATION',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Text(
                'Enter the OTP we have sent on your mobile number: +3064567873',
                style: TextStyle(fontSize: 16, color: Colors.black45),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DigitBox(),
                  SizedBox(width: 20,),
                  DigitBox(),
                  SizedBox(width: 20,),
                  DigitBox(),
                  SizedBox(width: 20,),
                  DigitBox(),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => map()),
    );
  },
  style: ElevatedButton.styleFrom(
    primary: Red, 
    minimumSize: Size(150, 40),
  ),
  child: Text('VERIFY'),
)

            ],
          ),
        ),
      ),
    );
  }
}

class DigitBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(width: 1),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          counterText: '',
        ),
        maxLength: 1,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
      ),
    );
  }
}

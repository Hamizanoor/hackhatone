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
            backgroundColor: Colors.red,
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/heartlogo-removebg-preview.png',
                  height: 100,
                  width: 100,
                ),
              ],
            ),
          ),
        ),
        body: Center(
          child: FancyBox(),
        ),
      ),
    );
  }
}

class FancyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 400,
        height: 300,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0),
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              Text(
                'PHONE VERIFICATION',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "“Enter the OTP we have sent on your mobile number: +3064567873”",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OTPVerificationBox(),
                  SizedBox(width: 10),
                  OTPVerificationBox(),
                  SizedBox(width: 10),
                  OTPVerificationBox(),
                  SizedBox(width: 10),
                  OTPVerificationBox(),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GOOGLEMap()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  minimumSize: Size(150, 40),
                ),
                child: Text(
                  'VERIFY',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OTPVerificationBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50, // Adjust the width as needed
      height: 50, // Adjust the height as needed
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: TextField(
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}

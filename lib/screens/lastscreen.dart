import 'package:flutter/material.dart';

class lastScreen extends StatefulWidget {
  const lastScreen({super.key});

  @override
  State<lastScreen> createState() => _lastScreenState();
}

class _lastScreenState extends State<lastScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 700,
          width: 400,
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/heartlogo-removebg-preview.png',
                height: 200,
                width: 200,
              ),
              SizedBox(height: 20),
              Text(
                'Blood Centre',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'Connecting Lives',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


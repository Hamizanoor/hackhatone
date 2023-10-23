import 'package:flutter/material.dart';

class NewDonor extends StatelessWidget {
  final String name;
  final String place;
  final String number;
  final String date;
  final String bloodGroup;

  NewDonor({
    required this.name,
    required this.place,
    required this.number,
    required this.date,
    required this.bloodGroup,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: $name'),
            Text('Place: $place'),
            Text('Number: $number'),
            Text('Date: $date'),
            Text('BloodGroup: $bloodGroup'),
          ],
        ),
      ),
    );
  }
}

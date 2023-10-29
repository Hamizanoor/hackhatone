import 'package:flutter/material.dart';
import 'package:myfirstapp/screens/manager.dart';

class SaveDetail extends StatelessWidget {
  final List<Map<String, String>> detailsList;

  SaveDetail({required this.detailsList});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.red,
          title: Text('All Donor'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => manageprofile(), 
                  ),
                );
              },
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: detailsList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name: ${detailsList[index]['Name']}'),
                  Text("Place: ${detailsList[index]['Place']}"),
                  Text('PhoneNumber: ${detailsList[index]['PhoneNumber']}'),
                  Text('Date: ${detailsList[index]['Date']}'),
                  Text('BloodGroup: ${detailsList[index]['BloodGroup']}'),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

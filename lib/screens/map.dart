import 'package:flutter/material.dart';
import 'package:myfirstapp/constant/color.dart';

import 'package:myfirstapp/screens/Donordetail.dart';

import 'package:myfirstapp/widegt/custmbar.dart';

class GOOGLEMap extends StatefulWidget {
  const GOOGLEMap({Key? key}) : super(key: key);

  @override
  State<GOOGLEMap> createState() => _GOOGLEMapPageState();
}

class _GOOGLEMapPageState extends State<GOOGLEMap> {
  int tappedChipIndex = -1;

  List<String> chipLabels = [
    'O+',
    'B+',
    'AB+',
    'A-',
    'B-',
    'AB-',
    'O-',
    'ALL',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.red,
          title: Text('JOHAR TOWN, LAHORE'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.person_2_outlined),
              onPressed: () {
                // Add your action here
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.black45,
              child: Image.asset(
                "assets/images/Mask group.png",
                height: 50,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Blood Groups"),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Wrap(
                spacing: 8.0, 
                runSpacing: 8.0,
                children: List.generate(8, (index) {
                  return CustomActionChip(
                    label: chipLabels[index], 
                    isSelected: tappedChipIndex == index,
                    onPressed: () {
                      setState(() {
                        tappedChipIndex = index;
                      });
                    },
                  );
                }),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => SaveDetail()),
                  //     );
                  //   },
                  //   style: ElevatedButton.styleFrom(
                  //     primary: Red,
                  //     minimumSize: Size(150, 40),
                  //   ),
                  //   child: Text('Show All'),
                  // ),

                  SizedBox(width: 16.0), 
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DonorDetail()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Red,
                      minimumSize: Size(150, 40),
                    ),
                    child: Text('ADD NEW DONOR'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

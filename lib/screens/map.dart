import 'package:flutter/material.dart';
import 'package:myfirstapp/constant/color.dart';

class Map extends StatefulWidget {
  const Map({Key? key}) : super(key: key);

  @override
  State<Map> createState() => _MapPageState();
}

class _MapPageState extends State<Map> {
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
        body: Container(
          height:400,
          width: 400,
          color: Colors.black45,
          child: Image.asset("assets/images/Mask group.png",
          height: 100,
          width: 200,
          fit: BoxFit.cover,),
          
          
        ),
        ),
      
    );
  }
}

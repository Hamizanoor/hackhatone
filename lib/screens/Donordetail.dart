import 'package:flutter/material.dart';
import 'package:myfirstapp/constant/color.dart';
import 'package:myfirstapp/screens/AllDonor.dart';

class DonorDetail extends StatefulWidget {
  @override
  _DonorDetailState createState() => _DonorDetailState();
}

class _DonorDetailState extends State<DonorDetail> {
  TextEditingController nameController = TextEditingController();
  TextEditingController placeController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController bloodGroupController = TextEditingController();

  List<Map<String, String>> detailsList = [];

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
                    'assets/images/heartlogo-removebg-preview.png',
                    height: 100,
                    width: 100,
                  ),
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                constraints: BoxConstraints(maxWidth: 400),
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
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(labelText: 'Name'),
                    ),
                    TextField(
                      controller: placeController,
                      decoration: InputDecoration(labelText: 'Place'),
                    ),
                    TextField(
                      controller: phoneNumberController,
                      decoration: InputDecoration(labelText: 'PhoneNumber'),
                    ),
                    TextField(
                      controller: dateController,
                      decoration: InputDecoration(labelText: 'Date'),
                    ),
                    TextField(
                      controller: bloodGroupController,
                      decoration: InputDecoration(labelText: 'BloodGroup'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      String name = nameController.text;
                      String place = placeController.text;
                      String phoneNumber = phoneNumberController.text;
                      String date = dateController.text;
                      String bloodGroup = bloodGroupController.text;
    
                      setState(() {
                        detailsList.add({
                          'Name': name,
                          'Place': place,
                          'PhoneNumber': phoneNumber,
                          'Date': date,
                          'BloodGroup': bloodGroup,
                        });
                      });
    
                      nameController.clear();
                      placeController.clear();
                      phoneNumberController.clear();
                      dateController.clear();
                      bloodGroupController.clear();
                    },
                    
                  style: ElevatedButton.styleFrom(
                    primary: Red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    minimumSize: Size(150, 40),
                  ),
                  child: Text(
                    'Save',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                  SizedBox(width: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SaveDetail(detailsList: detailsList),
                        ),
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
                    'View Donor Detail',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

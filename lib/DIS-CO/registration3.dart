import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/COMMON/login.dart';
import 'package:flutter_application_1/DIS-CO/approveclg.dart';
import 'package:flutter_application_1/DIS-CO/homedisco.dart';

class registration3 extends StatefulWidget {
  const registration3({super.key});

  @override
  State<registration3> createState() => _registration3State();
}

class _registration3State extends State<registration3> {
  var name = TextEditingController();
   var Email_Id=TextEditingController();
  var code = TextEditingController();
  var phone_no = TextEditingController();

  void getdata() async {
    print('object');
    await FirebaseFirestore.instance.collection('coordinators').add(
        {'name': name.text, 'Email_Id':Email_Id.text, 'password': code.text, 'number': phone_no.text});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 100, bottom: 10),
                child: Text('Registration',
                    style: TextStyle(
                        color: Color.fromARGB(255, 142, 85, 241),
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(' Name'),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 80, right: 80),
                child: TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: ('User_name')),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(' Email_Id'),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 80, right: 80),
                child: TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: ('mail')),
                ),
              ),
            ),
            SizedBox(height: 05),
            SizedBox(height: 05),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text('Code'),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 80, right: 80),
                child: TextFormField(
                  controller: code,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: ('Password')),
                ),
              ),
            ),
            SizedBox(height: 05),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text('Number'),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 80, right: 80),
                child: TextFormField(
                  controller: phone_no,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: ('phone_no')),
                ),
              ),
            ),
           
            Padding(
              padding: const EdgeInsets.only(
                  left: 450, right: 450, top: 20, bottom: 10),
              child: Image.asset('picture/logo.JPG'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 10),
              child: ElevatedButton(
                onPressed: () {
                  getdata();
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return Homedisco();
                  })));
                },
                child: Text('Signin'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

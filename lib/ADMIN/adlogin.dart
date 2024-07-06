import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ADMIN/homeadmin.dart';
import 'package:flutter_application_1/USER/home.dart';

class Adlogin extends StatefulWidget {
  const Adlogin({Key? key}) : super(key: key);

  @override
  State<Adlogin> createState() => _AdloginState();
}

class _AdloginState extends State<Adlogin> {
  var mailId = TextEditingController();
  var password = TextEditingController();

  void getData() async {
    print('object');
    await FirebaseFirestore.instance.collection('Admin').add(
        {'name': mailId.text, 'password': password.text});
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
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Color.fromRGBO(45, 124, 222, 27),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 10),
              child: Text('Email'),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: TextFormField(
                  controller: mailId,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: ('Mail_id'),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 10),
              child: Text('Password'),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: ('6 digits'),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: ElevatedButton(
                onPressed: () {
                  getData();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Adminhome();
                      },
                    ),
                  );
                },
                child: Text('Login'),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}


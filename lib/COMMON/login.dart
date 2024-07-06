import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ADMIN/adviewsk.dart';
import 'package:flutter_application_1/ADMIN/homeadmin.dart';
import 'package:flutter_application_1/COLLEGE/clghome.dart';
import 'package:flutter_application_1/COLLEGE/registration5.dart';
import 'package:flutter_application_1/DIS-CO/homedisco.dart';
import 'package:flutter_application_1/DIS-CO/registration3.dart';
import 'package:flutter_application_1/STOREKEEPERS/registration2.dart';
import 'package:flutter_application_1/USER/home.dart';
import 'package:flutter_application_1/USER/registration.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  String type;
  Login({super.key, required this.type});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
  var password = TextEditingController();
  var name = TextEditingController();
  Future<void> checkdata() async {
    if (name.text == 'admin@123' && password.text == 'admin123') {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return Adminhome();
        },
      ));
    }
    if (widget.type == 'user') {
      final QuerySnapshot userSnapshot = await FirebaseFirestore.instance
          .collection('user')
          .where('name', isEqualTo: name.text)
          .where('password', isEqualTo: password.text)
          // .where('status', isEqualTo: 1)
          .get();
    
      if (userSnapshot.docs.isNotEmpty) {
        var userid = userSnapshot.docs[0].id;
        var usr=userSnapshot.docs[0]['name'];
        var phn=userSnapshot.docs[0]['number'];
        var mail=userSnapshot.docs[0]['Email_Id'];
        SharedPreferences sp = await SharedPreferences.getInstance();
        sp.setString('uid', userid);
        sp.setString('name', usr);
        sp.setString('number', phn);
        sp.setString('Email_Id', mail);
        
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return Mynavigationbar();
          },
        ));
      } else {
       
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Login Failed'),
            content: Text('Invalid username or password. Please try again.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OK'),
              ),
            ],
          ),
        );
      }
    }

    if (widget.type == 'storekeepers') {
      final QuerySnapshot storekeepersSnapshot =
          await FirebaseFirestore.instance
              .collection('storekeepers')
              .where('name', isEqualTo: name.text)
              .where('password', isEqualTo: password.text)
              // .where('status', isEqualTo: 1)
              .get();

               if (storekeepersSnapshot.docs.isNotEmpty) {
        var userid = storekeepersSnapshot.docs[0].id;
        SharedPreferences sp = await SharedPreferences.getInstance();
        sp.setString('uid', userid);

        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return Storekeeper();
          },
        ));
      } else {
       
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Login Failed'),
            content: Text('Invalid username or password. Please try again.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OK'),
              ),
            ],
          ),
        );
      }       
    }
    
    if (widget.type == 'college') {
      final QuerySnapshot collegeSnapshot = await FirebaseFirestore.instance
          .collection('college')
          .where('name', isEqualTo: name.text)
          .where('password', isEqualTo: password.text)
          // .where('status', isEqualTo: 1)
          .get();
           if (collegeSnapshot.docs.isNotEmpty) {
        var userid = collegeSnapshot.docs[0].id;
        SharedPreferences sp = await SharedPreferences.getInstance();
        sp.setString('uid', userid);

        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return College();
          },
        ));
      } else {
       
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Login Failed'),
            content: Text('Invalid username or password. Please try again.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OK'),
              ),
            ],
          ),
        );
      }     
    }
    if (widget.type == 'coordinators') {
      final QuerySnapshot coordinatorsSnapshot =
          await FirebaseFirestore.instance
              .collection('coordinators')
              .where('name', isEqualTo: name.text)
              .where('password', isEqualTo: password.text)
              // .where('status', isEqualTo: 1)
              .get();
               if (coordinatorsSnapshot.docs.isNotEmpty) {
        var userid = coordinatorsSnapshot.docs[0].id;
        SharedPreferences sp = await SharedPreferences.getInstance();
        sp.setString('uid', userid);

        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return Homedisco();
          },
        ));
      } else {
       
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Login Failed'),
            content: Text('Invalid username or password. Please try again.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OK'),
              ),
            ],
          ),
        );
      }     
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
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
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 10),
                child: Text('name'),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: ('name')),
                  ),
                ),
              ),
              SizedBox(height: 05),
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
                        border: OutlineInputBorder(), labelText: ('password')),
                  ),
                ),
              ),
              Row( 
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell( onTap:() {
                    if (widget.type=='user'){
                      Navigator.push(context, MaterialPageRoute(builder:(context){
                        return Registration();
                      }));
                    }
                     else if (widget.type=='storekeepers'){
                      Navigator.push(context, MaterialPageRoute(builder:(context){
                        return registration2();
                      }));
                    }
                     else if (widget.type=='college'){
                      Navigator.push(context, MaterialPageRoute(builder:(context){
                        return registration5();
                      }));
                    }
                  else if (widget.type=='coordinators'){
                      Navigator.push(context, MaterialPageRoute(builder:(context){
                        return registration3();
                      }));
                    }
                  }, child: Text("New Member?")),
                ],
              ),
              SizedBox(height: 05),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: ElevatedButton(
                  onPressed: () {
                    checkdata();
          //  Navigator.push(context, MaterialPageRoute(
          //                         builder: (context) {
          //                           return Adminhome();
          //                         },
          //                       ));
                  },
                  child: Text('Login'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

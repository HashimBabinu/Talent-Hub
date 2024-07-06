import 'package:flutter/material.dart';
import 'package:flutter_application_1/ADMIN/Viewstdadmin.dart';
import 'package:flutter_application_1/ADMIN/adviewfbks.dart';
import 'package:flutter_application_1/ADMIN/adviewworks.dart';
import 'package:flutter_application_1/ADMIN/approvedis-co.dart';
import 'package:flutter_application_1/ADMIN/approvedisco.dart';
import 'package:flutter_application_1/ADMIN/viewclg.dart';
import 'package:flutter_application_1/COLLEGE/viewstd.dart';

import 'package:flutter_application_1/COLLEGE/approvestd.dart';
import 'package:flutter_application_1/STOREKEEPERS/skworks.dart';
import 'package:flutter_application_1/STOREKEEPERS/viework.dart';
import 'package:flutter_application_1/admin/approvedis-co.dart';



class Adminhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Admin page')),
        backgroundColor: Colors.blueGrey,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Works'),
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 25),
              child: CategoryButton(category: 'View coordinators', destination:Approvedisco2()),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: CategoryButton(category: 'View college', destination:Viewclg()),
            ),
             Padding(
              padding: const EdgeInsets.all(25),
              child: CategoryButton(category: 'Storekeepers', destination: Adiewfbks()),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: CategoryButton(category: 'View students', destination:Viewstds()),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: CategoryButton(category: 'View works', destination:Adviewworks()),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String category;
  final Widget destination;

  CategoryButton({required this.category, required this.destination});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
       
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      child: Text(category),
    );
  }
}

class Viewdisco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View district coordinators'),
      ),
      body: Center(
        child: Text('This is the View district coordinators page'),
      ),
    );
  }
}

class viewclg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View college'),
      ),
      body: Center(
        child: Text('This is the View college'),
      ),
    );
  }
}

class skworks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View storekeepers'),
      ),
      body: Center(
        child: Text('This is the View storekeepers'),
      ),
    );
  }
}

class Viewstd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Students'),
      ),
      body: Center(
        child: Text('This is the View students'),
      ),
    );
  }
}

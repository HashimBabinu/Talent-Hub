import 'package:flutter/material.dart';

import 'package:flutter_application_1/COLLEGE/approvestd.dart';
import 'package:flutter_application_1/COLLEGE/viework.dart';
import 'package:flutter_application_1/COLLEGE/viewstd.dart';
import 'package:flutter_application_1/DIS-CO/approveclg.dart';
import 'package:flutter_application_1/DIS-CO/notice.dart';

void main() {
  runApp(Homedisco());
}

class Homedisco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'District coordinators',
      theme: ThemeData(
        primaryColor: Colors.blue,
        hintColor: Colors.blueAccent,
        scaffoldBackgroundColor: Colors.grey[200],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blueGrey,
          elevation: 0,
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
      ),
      home: AddItemsPage(),
    );
  }
}

class AddItemsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Talent hub'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Coordinators view',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
            CategoryButton(
              category: 'Approve Colleges',
              destination: Approveclg(),
            ),
            SizedBox(height: 25),
            CategoryButton(
              category: 'View students',
              destination: Viewstd(),
            ),
            SizedBox(height: 25),
            CategoryButton(
              category: 'Notification',
              destination:  Notice(),
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
        // Navigate to the destination screen when the button is pressed
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(30, 40, 300, 400),
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        textStyle: TextStyle(fontSize: 18),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(category),
    );
  }
}

class ViewWorksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Approve college'),
      ),
      body: Center(
        child: Text('This is to view college'),
      ),
    );
  }
}

class ApprovePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Students view'),
      ),
      body: Center(
        child: Text('This is the Students view'),
      ),
    );
  }
}




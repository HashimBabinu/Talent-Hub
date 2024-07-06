import 'package:flutter/material.dart';

import 'package:flutter_application_1/COLLEGE/approvestd.dart';
import 'package:flutter_application_1/COLLEGE/viework.dart';
import 'package:flutter_application_1/STOREKEEPERS/rejectwork.dart';
import 'package:flutter_application_1/STOREKEEPERS/viewfbks.dart';
import 'package:flutter_application_1/STOREKEEPERS/viework.dart';

void main() {
  runApp(Storekeeper());
}

class Storekeeper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Storekeeper App',
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
        title: Text('Storekeeper'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Works',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
            CategoryButton(
              category: 'View Works',
              destination: Viework(),
            ),
            SizedBox(height: 25),
            CategoryButton(
              category: 'Permissions ',
              destination: Rejectwork(),
            ),
           
            SizedBox(height: 25),
            CategoryButton(
              category: 'View Feedbacks',
              destination: Viewfbks(),
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
        title: Text('Edit'),
      ),
      body: Center(
        child: Text('This is the Edit page'),
      ),
    );
  }
}

class ApprovePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Approve'),
      ),
      body: Center(
        child: Text('This is the Approve page'),
      ),
    );
  }
}

class DisableWorksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Disable Works'),
      ),
      body: Center(
        child: Text('This is the Disable Works page'),
      ),
    );
  }
}

class ViewFeedbacksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Feedbacks'),
      ),
      body: Center(
        child: Text('This is the View Feedbacks page'),
      ),
    );
  }
}

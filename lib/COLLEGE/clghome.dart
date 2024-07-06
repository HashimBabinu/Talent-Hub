import 'package:flutter/material.dart';

import 'package:flutter_application_1/COLLEGE/approvestd.dart';
import 'package:flutter_application_1/COLLEGE/viework.dart';
import 'package:flutter_application_1/COLLEGE/viewsk.dart';
import 'package:flutter_application_1/COLLEGE/viewstd.dart';
import 'package:flutter_application_1/STOREKEEPERS/viewfbks.dart';

void main() {
  runApp(College());
}

class College extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
        title: Center(child: Text('College')),
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
              child: CategoryButton(category: 'Approve students', destination: Viewstd()),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: CategoryButton(category: 'View works', destination: viework()),
            ),
             Padding(
              padding: const EdgeInsets.all(25),
              child: CategoryButton(category: 'Approve store keepers', destination: Viewsk()),
            ),
           
            Padding(
              padding: const EdgeInsets.all(25),
              child: CategoryButton(category: 'View feedbacks', destination: Viewfbks()),
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
      child: Text(category),
    );
  }
}

class ViewWorksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Works'),
      ),
      body: Center(
        child: Text('This is the View Works page'),
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

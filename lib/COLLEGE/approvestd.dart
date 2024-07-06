import 'package:flutter/material.dart';
import 'package:flutter_application_1/STOREKEEPERS/skworks.dart';


class Approvestd extends StatefulWidget {
  const Approvestd({Key? key}) : super(key: key);

  @override
  State<Approvestd> createState() => _ApprovestdState();
}

class _ApprovestdState extends State<Approvestd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Approve Students'),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Storekeeper();
            }));
          },
          child: Icon(Icons.close),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.people),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 30),
            Text(
              'Name of the College: ************',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              'Details: *********',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              'About: **********',
              style: TextStyle(fontSize: 20),
            ),
            Spacer(), // Adds spacing between text and button
            ElevatedButton(
              onPressed: () {
                // Add onPressed functionality
              },
              child: Text('Approve'),
            ),
          ],
        ),
      ),
    );
  }
}

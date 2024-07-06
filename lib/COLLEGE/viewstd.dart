import 'package:flutter/material.dart';
import 'package:flutter_application_1/COLLEGE/approvestd.dart';

class Viewstd extends StatefulWidget {
  const Viewstd({Key? key}) : super(key: key);

  @override
  State<Viewstd> createState() => _ViewstdState();
}

class _ViewstdState extends State<Viewstd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    // Handle close button press
                  },
                ),
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 5),
              child: Text(
                'Students View',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5,
                  color: Color.fromARGB(255, 144, 174, 196),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: ListTile(
                      title: Text('Name of the student'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Department'),
                          Text('Number:'),
                          Text('Details:'),
                          SizedBox(height: 10), // Add spacing
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Approvestd();
                  }),
                );
                            },
                            child: Text('Open'),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

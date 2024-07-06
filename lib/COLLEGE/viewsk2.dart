import 'package:flutter/material.dart';

class Viewsk2 extends StatefulWidget {
  const Viewsk2({Key? key}) : super(key: key);

  @override
  State<Viewsk2> createState() => _Viewsk2State();
}

class _Viewsk2State extends State<Viewsk2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Shopkeeper'),
        centerTitle: true,
        leading: Icon(Icons.close),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Icon(Icons.people),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 60),
        child: Container(
          color: Colors.green[50],
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 30, right: 100),
                  child: Text(
                    'Name of the Shopkeeper:************',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, right: 200),
                  child: Text(
                    'Details:*********',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, right: 200),
                  child: Text(
                    'About:**********',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Approve'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Reject'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

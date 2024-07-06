import 'package:flutter/material.dart';
import 'package:flutter_application_1/COLLEGE/viewsk2.dart';

class Viewsk extends StatefulWidget {
  const Viewsk({super.key});

  @override
  State<Viewsk> createState() => _ViewskState();
}

class _ViewskState extends State<Viewsk> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Icon(Icons.close),
              ),
            ],
          ),
          Center(
           child:Padding(
             padding: const EdgeInsets.only(top: 20,bottom: 5),
             child: Text(('Store keepers'),
             style: TextStyle(
              fontSize: 30,fontWeight: FontWeight.bold)),
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
                          title:
                                  Text('Name of the Shop'),
                                  subtitle:
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Text('Number'),
                                           
                                        ],
                                      ),
                                    ],
                                  ),
                                  trailing: ElevatedButton(
                                      onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Viewsk2();
                  }),
                );
              
                                    },
                                    child: Text('View'),),
                              
                        )),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
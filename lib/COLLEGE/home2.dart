import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
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
                padding: const EdgeInsets.only(top: 20),
                child: Icon(Icons.close),
              ),
            ],
          ),
          Center(
           child:Padding(
             padding: const EdgeInsets.only(top: 20,bottom: 5),
             child: Text(('Colleges'),
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
                                  Text('College Name'),
                                  subtitle:
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Text('Address'),
                                           Text('Number:'),
                                        ],
                                      ),
                                    ],
                                  ),
                                  trailing: ElevatedButton(onPressed: () {
                                      
                                    },
                                    child: Text('Status'),),
                              
                        )),
                  );
                }),
          ),
        ],
      ),
    );
   
  }
}
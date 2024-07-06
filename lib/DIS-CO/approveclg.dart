import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/COLLEGE/viewstd.dart';

class Approveclg extends StatefulWidget {
  const Approveclg({super.key});

  @override
  State<Approveclg> createState() => _ApproveclgState();
}

class _ApproveclgState extends State<Approveclg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
    Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60,left: 300),
                child: InkWell(
                    onTap: () {
     Navigator.push(context, MaterialPageRoute(builder: (context) {
       return Viewstd();
     }));
    },child: Icon(Icons.people_rounded)),
              ),
               Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(),
              
                    child: Icon(Icons.close),
                     
                  ),
                ],
              ),
              Center(
               child:Padding(
                 padding: const EdgeInsets.only(top: 40),
                 child: 
                 Text(('Colleges'),
                 style: TextStyle(
                  fontSize: 30,fontWeight: FontWeight.bold),
                  
                  ),
               ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 10, 
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Card(
                          elevation: 5,
                          color: Color.fromARGB(255, 241, 205, 175),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                title:
                                        Text('College'),
                                        subtitle:
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Column(
                                                  children: [
                                                    Text('Name'),
                                                    Text('Email'),
                                                    Text('Contact'),
                                                    Text('Details'),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Center(
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(top:30,right: 20),
                                                       child: ElevatedButton(onPressed: (){},
                                                       child: Text('Approve'),),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Center(
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(top:30,right: 20),
                                                       child: ElevatedButton(onPressed: (){},
                                                       child: Text('Block'),),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 30),
                                                  child: Icon(Icons.delete),
                                                )
                                              ],
                                            ),
                                            

                                          ],
                                        ),
                                        
                                        
                                      
                                         
            ])),
                                       ),
                        ),
                      );
                      
                    }),
              ),
            ],
          ),
        
      );
  }
}
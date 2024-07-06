import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/STOREKEEPERS/skworks.dart';


class Rejectwork extends StatefulWidget {
  const Rejectwork({super.key});

  @override
  State<Rejectwork> createState() => _RejectworkState();
}

class _RejectworkState extends State<Rejectwork> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
    Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: InkWell(
    onTap: () {
     Navigator.push(context, MaterialPageRoute(builder: (context) {
       return Storekeeper();
     }));},child: Icon(Icons.close),
                  ),
              )],
              ),
              Center(
               child:Padding(
                 padding: const EdgeInsets.only(top: 50),
                 child: 
                 Text(('Works'),
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
                        padding: const EdgeInsets.only(left: 10,right:10),
                        child: Card(
                          elevation: 5,
                          color: Color.fromARGB(255, 228, 214, 182),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                title:
                                        Text('Colleges'),
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
                                              mainAxisAlignment:MainAxisAlignment.start ,
                                              children: [
                                                Column( 
                                                 
                                                  children: [
                                                    Center(
                                                      child: Column(
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(top:30,right:5),
                                                           child: ElevatedButton(onPressed: (){},
                                                           child: Text('Approve'),),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Column(
                                                      children: [
                                                        Center(
                                                          child: Column(
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsets.only(top:30,right: 10),
                                                               child: ElevatedButton(onPressed: (){},
                                                               child: Text('Reject'),),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                         Row(
                                                          mainAxisAlignment:MainAxisAlignment.start ,
                                                           children: [
                                                             Column(
                                                                                                            
                                                            children: [
                                                     Center(
                                                              child: Column(
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsets.only(top:30,right: 10),
                                                                   child: ElevatedButton(onPressed: (){},
                                                                   child: Text('Disable'),
                                                                   ),
                                                                  ),
                                                                ],
                                                              ),
                                                                                                                     ),
                                                                                                           
                                                                                                          ],
                                                                                                        ),
                                                           ],
                                                         ),
                                                                                                    
                                                        
                                                                                                  ],
                                                                                                ),
                                                      ],
                                                    ),
                                                                                        
                                                                                        
                                                                                      
                                                                                         
                                                            ]),
                                              ],
                                            )]),
                                       ),
                        ),
                      ));
                      
                    }),
              ),
            ],
          ),
        
      );
  }
}
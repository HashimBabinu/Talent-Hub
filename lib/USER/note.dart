import 'package:flutter/material.dart';

class Note extends StatefulWidget {
  const Note({super.key});

  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text('Notification',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 5,
                      color: Color.fromARGB(255, 35, 188, 94),
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title:
                                    Text('Notification'),
                                    subtitle: 
                                    Text('************'),
                                    
                                   
                                
                          )),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
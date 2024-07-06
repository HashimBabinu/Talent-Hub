import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Feedbacks extends StatefulWidget {
  const Feedbacks({super.key});

  @override
  State<Feedbacks> createState() => _FeedbacksState();
}

class _FeedbacksState extends State<Feedbacks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
             child: Text(('Feedbacks'),
             style: TextStyle(
              fontSize: 30,fontWeight: FontWeight.bold)),
           ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 0),
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5,
                      color: Color.fromARGB(255, 186, 194, 200),
                      child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: ListTile(
                            title:
                                    Text('Gopu'),
                                    subtitle:
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Column(
                                          children: [
                                            Text('The product which I purchased is very good'),
                                          ],
                                        ),
                                      ],
                                    ),
                          )),
                    );
                  }),

            ),
          ),
         Column(
  children: [
    Text('Add feedback'),
    TextFormField(
      maxLines: null,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Add Yours',
      ),
    ),
    ElevatedButton(
      onPressed: () {
        // Add functionality here
      },
      child: Text('Ok'),
    ),
  ],
),

    ]));
  }
}

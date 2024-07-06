import 'package:flutter/material.dart';
import 'package:flutter_application_1/STOREKEEPERS/skworks.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Viewfbks extends StatefulWidget {
  const Viewfbks({Key? key});

  @override
  State<Viewfbks> createState() => _ViewfbksState();
}

class _ViewfbksState extends State<Viewfbks> {
  Future<QuerySnapshot<Map<String, dynamic>>> getData() async {
    //backend
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await FirebaseFirestore.instance.collection('ratingbar').get();
    return querySnapshot;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                   
                  
                  },
                ),
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                'View feedbacks',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder(
              future: FirebaseFirestore.instance.collection('ratingbar').get(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (snapshot.hasError) {
                  return Center(
                    child: Text('Error: ${snapshot.error}'),
                  );
                }
                final ratingBar = snapshot.data!.docs;

                return Flexible(
                  child: ListView.builder(
                    itemCount: ratingBar.length,
                    itemBuilder: (context, index) {
                      var rtb = ratingBar[index].data() as Map<String, dynamic>;
                      return Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                        child: Card(
                          elevation: 5,
                          color: Color.fromARGB(255, 179, 198, 212),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              title: Text(rtb['ratingbar']),
                            ),
                          ),
                        ),
                      );
                    },
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


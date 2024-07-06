import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ADMIN/approvedisco.dart';


class Approveco extends StatefulWidget {
  const Approveco({Key? key}) : super(key: key);

  @override
  State<Approveco> createState() => _ApprovecoState();
}

class _ApprovecoState extends State<Approveco> {
  Future<QuerySnapshot<Map<String,dynamic>>> getData() async {
      QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await FirebaseFirestore.instance.collection('coordinators').get();
        print(querySnapshot);
    return querySnapshot;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: InkWell(
                    onTap: () {
                     
                    },
                    child: Icon(Icons.close),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text(
                ' View Coordinators',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder(
               future: getData(),
                builder: (context,AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting){
                     return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (snapshot.hasError) {
                  return Center(
                    child: Text('Error: ${snapshot.error}'),
                  );
                }
                
                  final Coordinators = snapshot.data!.docs;
                print(Coordinators);

              return ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Card(
                      elevation: 5,
                      color: Color.fromARGB(255, 241, 205, 175),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Text(
                            'Name of the coordinator',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('College name'),
                              Text('Email'),
                              Text('Contact'),
                              Text('Details'),
                            ],
                          ),
                         
                        ),
                      ),
                    ),
                  );
                },
              );
        }))]
      ),
    );
  }
}

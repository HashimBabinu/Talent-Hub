import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Approvedisco2 extends StatefulWidget {
  const Approvedisco2({Key? key}) : super(key: key);

  @override
  State<Approvedisco2> createState() => Approvedisco2State();
}

class Approvedisco2State extends State<Approvedisco2> {
  Future<QuerySnapshot<Map<String, dynamic>>> getData() async {
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
                      // Add your close button functionality here
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
                'VIEWS',
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
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snapshot.hasError || !snapshot.hasData || snapshot.data!.docs.isEmpty) {
                    return Center(
                      child: Text('No data available'),
                    );
                  }

                  final coordinators = snapshot.data!.docs;
                print(coordinators);

                return ListView.builder(
                    itemCount: coordinators.length,
                    itemBuilder: (context, index) {
                       var co = coordinators[index].data() as Map<String, dynamic>;
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Card(
                          elevation: 5,
                          color: Color.fromARGB(255, 241, 205, 175),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              title: Text( co['name']
                               ,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                 
                                  Text(co['password']),
                                  
                                ],
                              ),
                              trailing: ElevatedButton(
                                onPressed: () {
                                  // Add your approve button functionality here
                                },
                                child: Text('Approve'),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }),
          ),
        ],
      ),
    );
  }
}

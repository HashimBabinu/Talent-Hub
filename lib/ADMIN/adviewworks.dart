
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Adviewworks extends StatefulWidget {
  const Adviewworks ({super.key});

  @override
  State<Adviewworks> createState() => _AdviewworksState();
}

class _AdviewworksState extends State<Adviewworks> {
  Future<QuerySnapshot<Map<String,dynamic>>> getData() async {
      QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await FirebaseFirestore.instance.collection('Product').get();
        print(querySnapshot);
    return querySnapshot;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
    Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Icon(Icons.close),
                  ),
                ],
              ),
              Center(
               child:Padding(
                 padding: const EdgeInsets.only(top: 50),
                 child: 
                 Text(('View Works'),
                 style: TextStyle(
                  fontSize: 30,fontWeight: FontWeight.bold),
                  
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
                if (snapshot.hasError) {
                  return Center(
                    child: Text('Error: ${snapshot.error}'),
                  );
                }
                
                final Product = snapshot.data!.docs;
                print(Product);

                  return ListView.builder(
                      itemCount: Product.length, 
                      itemBuilder: (context, index) {
                        var prdt = Product[index].data() as Map<String, dynamic>;
                        return Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Card(
                            elevation: 5,
                            color: Color.fromARGB(255, 241, 205, 175),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  title:
                                          Text(prdt['Product Name']),
                                          subtitle:
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Column(
                                                children: [
                                                  Text(prdt['image_url']),
                                                  Text(prdt['Description']),
                                                  Text(prdt['price']),
                                                ],
                                              ),
                                            ],
                                          ),
                                          
                                         )),
                          ),
                        );
                      });
  }),
              ),
            ],
          ),
        
      );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/USER/order.dart';
import 'package:flutter_application_1/USER/page1.dart';
import 'package:flutter_application_1/USER/rating.dart';
class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}
class _Page2State extends State<Page2> {
  TextEditingController _searchController = TextEditingController();
  List<String> allItems = [
    'Normal Pencil',
    'Realistic',
    'Realistic',
  ];
  List<String> filteredItems = [

  ];

  @override
  void initState() {
    super.initState();
    filteredItems.addAll(allItems);
  }

  void filterItems(String query) {
    setState(() {
      filteredItems = allItems
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pencil Drawings'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 169, 186, 203),
        leading: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Page1();
            }));
          },
          child: Icon(Icons.close),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              onChanged: (value) {
                filterItems(value);
              },
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredItems.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'picture/${filteredItems[index].toLowerCase().replaceAll( ' ', '')}.jpg',
                        height: 150,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return Rating();
                              }));
                            },
                            child: Text('Reviews'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                filteredItems[index],
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Cost: 250',
                                style: TextStyle(fontSize: 16),
                                
                              ),
                              Text('Quantity:5',
                               style: TextStyle(fontSize: 16),
                              )
                              
                            ],
                          ),
                          Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                                    return OrderItemPage();
                                  }));
                                },
                                child: Text('Add to cart'),
                              ),
                             
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 100),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


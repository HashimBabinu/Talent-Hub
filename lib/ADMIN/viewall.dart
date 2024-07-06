import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(Viewall());
}

class Viewall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
       MaterialApp(
        title: 'Add Items Page',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:AddItemsPage(),
    );
  }
}

class AddItemsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 40),
          child: Center(child: Text('VIEWS')),
        ),
        backgroundColor: Color.fromARGB(255, 244, 158, 172),
        leading: Icon(Icons.close),
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)))
      ),
      body: Container(
        color: Color.fromARGB(255, 243, 196, 222),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('All view',
              style: TextStyle(fontSize:50,fontWeight: FontWeight.bold,color: Colors.white,fontStyle: FontStyle.italic ),),
              Padding(
                padding: const EdgeInsets.only(top:50,bottom: 25),
                child: CategoryButton(category: 'View College'), 
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: CategoryButton(category: 'View Storekeeper'),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: CategoryButton(category: 'View Students'),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: CategoryButton(category: 'View Work'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String category;

  CategoryButton({required this.category});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        
        print('Selected category: $category');

      },
      child: Text(category),
    );
  }
}


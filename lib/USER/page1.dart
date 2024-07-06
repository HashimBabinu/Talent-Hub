import 'package:flutter/material.dart';
import 'package:flutter_application_1/USER/home.dart';
import 'package:flutter_application_1/USER/page2.dart';


class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawings'),
        centerTitle: true,
        backgroundColor: Colors.red[100],
        leading: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Mynavigationbar();
            }));
          },
          child: Icon(Icons.close),
        ),
       
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          _buildItem('picture/pencil_drawing.jpg', 'Pencil'),
          _buildItem('picture/oil.webp', 'Oilpainting'),
          _buildItem('picture/glass_paint.webp', 'Glass'),
          _buildItem('picture/watercolor.jpg', 'Watercolor'),
        ],
      ),
    );
  }

  Widget _buildItem(String imagePath, String name) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Page2();
        }));
      },
      child: Card(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Image.asset(imagePath),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/USER/page1.dart';


class Home0 extends StatefulWidget {
  const Home0({Key? key}) : super(key: key);

  @override
  State<Home0> createState() => _Home0State();
}

class _Home0State extends State<Home0> {
  TextEditingController _searchController = TextEditingController();
  String _searchText = '';

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {
        _searchText = _searchController.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  if (_searchText.isEmpty || 'drawing'.contains(_searchText.toLowerCase()))
                    _buildItem('drawing.jpg', 'Drawing', Page1()),
                  if (_searchText.isEmpty || 'craft'.contains(_searchText.toLowerCase()))
                    _buildItem('craft.jpg', 'Craft', Page1()),
                  if (_searchText.isEmpty || 'stitching'.contains(_searchText.toLowerCase()))
                    _buildItem('stitching.jpg', 'Stitching', Page1()),
                  if (_searchText.isEmpty || 'mehandhi'.contains(_searchText.toLowerCase()))
                    _buildItem('mehandhi.jpg', 'Mehandhi', Page1()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItem(String imagePath, String name, Widget page) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return page;
        }));
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.asset(
                'picture/$imagePath',
                fit: BoxFit.cover,
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

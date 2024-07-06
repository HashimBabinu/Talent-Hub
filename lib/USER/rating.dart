import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Rating extends StatefulWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  var ratingbar = TextEditingController();
  double _userRating = 0.0; // User's own rating
 void getdata() async {
    print('object');
   
    await FirebaseFirestore.instance.collection('ratingbar').add(
        {'ratingbar':ratingbar .text});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ratings'),
        centerTitle: true,
        backgroundColor: Colors.red[100],
        leading: InkWell(
          onTap: () {
            Navigator.pop(context); // Pop the current route
          },
          child: Icon(Icons.close),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildRatingBar('Person 1', 3), // Existing ratings
              SizedBox(height: 5),
              _buildRatingBar('Person 2', 4.5), // Existing ratings
              SizedBox(height: 5),
              _buildUserRatingBar(), // User's own rating
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRatingBar(String personName, double rating) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          personName,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Container(
              height: 100,
              width: 100,
              child: Image.asset('picture/pencil_drawing.jpg'), // Adjust the asset path accordingly
            ),
            SizedBox(width: 20),
            RatingBar.builder(
              initialRating: rating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 30,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              ignoreGestures: true, // Disable user interaction for existing ratings
              onRatingUpdate: (rating) {
                // This callback is disabled for existing ratings
              },
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
 Widget _buildUserRatingBar() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Your Rating',
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10),
      Row(
        children: [
          Expanded(
            child: RatingBar.builder(
              initialRating: _userRating,
              minRating: 0,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 30,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                setState(() {
                  _userRating = rating;
                });
              },
            ),
          ),
          SizedBox(width: 10),
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              getdata();
              // Handle OK button press
            },
          ),
        ],
      ),
      SizedBox(height: 10),
      TextField(
        controller: ratingbar,
        decoration: InputDecoration(
          hintText: 'Add your ratings...',
          border: OutlineInputBorder(),
        ),
        maxLines: 3,
      ),
      SizedBox(height: 20),
    ],
  );
}

void main() {
  runApp(MaterialApp(
    home: Rating(),
  ));
}
}
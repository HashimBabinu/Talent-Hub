import 'dart:ffi';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/USER/home0.dart';

import 'package:image_picker/image_picker.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  void getData() async {
    await FirebaseFirestore.instance.collection('Product').add({
      'Product Name': Productname.text,
      'Description': descrition.text,
      'price': price.text,
      'image_url': imageUrl, //backend image picker
    });
  }

  var Productname = TextEditingController();
  var descrition = TextEditingController();
  var price = TextEditingController();

  var profileImage; //backend image picker
  XFile? PickedFile;
  String imageUrl = ''; //backend image picker

  File? _selectedImage;
  String? nm;
  final picker = ImagePicker();

  Future<void> _pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _selectedImage = File(pickedFile.path);
        nm = pickedFile.name;
      } else {
        print('No image selected.');
      }
    });
  }
@override
Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Home0();
                    },
                  ));
                },
                child: Icon(Icons.arrow_back),
              ),
            ],
          ),
          SizedBox(height: 16.0),
          InkWell(
            onTap: _pickImage,
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
                image: _selectedImage != null
                    ? DecorationImage(
                        image: FileImage(_selectedImage!),
                        fit: BoxFit.cover,
                      )
                    : null,
              ),
              child: _selectedImage == null
                  ? Icon(
                      Icons.camera_alt,
                      size: 60,
                    )
                  : null,
            ),
          ),
          SizedBox(height: 16.0),
          TextFormField(
            controller: Productname,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Product Name',
            ),
          ),
          SizedBox(height: 16.0),
          TextFormField(
            controller: descrition,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Description',
            ),
          ),
          SizedBox(height: 16.0),
          TextFormField(
            controller: price,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Price',
            ),
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () async {
                  await uploadImage();
                  getData();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 227, 139, 245),
                ),
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

 

  //backend image picker
  Future<void> uploadImage() async {
    try {
      if (_selectedImage != null) {
        print('____________');
        Reference storageReference =
            FirebaseStorage.instance.ref().child('image/${nm}');

        await storageReference.putFile(_selectedImage!);

        // Get the download URL
        imageUrl = await storageReference.getDownloadURL();

        // Now you can use imageUrl as needed (e.g., save it to Firestore)
        print('Image URL: $imageUrl');
      }
    } catch (e) {
      print('Error uploading image: $e');
    }
  }
}

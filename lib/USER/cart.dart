import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/USER/page1.dart';
import 'package:flutter_application_1/USER/paymentdone.dart';


void main() {
  runApp(Cart());
}

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cart Page with Payment Symbols',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CartPage(),
    );
  }
}

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text(
            ' Talent hub',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 40,
              color: Color.fromARGB(232, 210, 82, 131),
              fontWeight: FontWeight.bold,
             
            ),
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Text(
                  'Purchase again',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Text(
                'YOUR PRODUCT IS ALMOST VERIFIED',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 40.0),
            PaymentSymbol(imagePath: 'picture/cash_on_delivery.png'),
            SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Payment();
                  }),
                );
              },
              child: Text('OK'),
            ),
             ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                                    return Page1();
                                  }));
                                },
                                child: Text('Cancel'),
                              ),
          ],
        ),
      ),
    );
  }
}

class PaymentSymbol extends StatelessWidget {
  final String imagePath;

  PaymentSymbol({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.grey[200],
      ),
      child: Image.asset(
        imagePath,
        width: 100.0,
        height: 100.0,
      ),
    );
  }
}

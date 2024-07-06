import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ADMIN/Registration4.dart';
import 'package:flutter_application_1/ADMIN/viewclg.dart';
import 'package:flutter_application_1/COMMON/logo.dart';
import 'package:flutter_application_1/COMMON/splash.dart';
import 'package:flutter_application_1/STOREKEEPERS/registration2.dart';
import 'package:flutter_application_1/DIS-CO/registration3.dart';
import 'package:flutter_application_1/COLLEGE/registration5.dart';
import 'package:flutter_application_1/ADMIN/viewall.dart';
import 'package:flutter_application_1/COLLEGE/approvestd.dart';
import 'package:flutter_application_1/COLLEGE/home2.dart';
import 'package:flutter_application_1/COLLEGE/statusclg.dart';
import 'package:flutter_application_1/COLLEGE/viewsk.dart';
import 'package:flutter_application_1/COLLEGE/viewsk2.dart'; 
import 'package:flutter_application_1/COLLEGE/viewstd.dart';
import 'package:flutter_application_1/STOREKEEPERS/rejectwork.dart';
import 'package:flutter_application_1/USER/registration.dart';
import 'package:flutter_application_1/addhome.dart';
import 'package:flutter_application_1/ADMIN/approvedis-co.dart';
import 'package:flutter_application_1/USER/home.dart';
import 'package:flutter_application_1/admin/approvedisco.dart';
import 'package:flutter_application_1/USER/cart.dart';
import 'package:flutter_application_1/USER/home.dart';
import 'package:flutter_application_1/USER/page2.dart';
import 'package:flutter_application_1/DIS-CO/approveclg.dart';
import 'package:flutter_application_1/DIS-CO/coviewstd.dart';
import 'package:flutter_application_1/USER/home0.dart';
import 'package:flutter_application_1/COLLEGE/approvestd.dart';
import 'package:flutter_application_1/COLLEGE/viework.dart';
import 'package:flutter_application_1/STOREKEEPERS/viewfbks.dart';
import 'package:flutter_application_1/STOREKEEPERS/viework.dart';
import 'package:flutter_application_1/STOREKEEPERS/skworks.dart';
import 'package:flutter_application_1/COLLEGE/viewstd.dart';
import 'package:flutter_application_1/DIS-CO/approveclg.dart';
import 'package:flutter_application_1/DIS-CO/homedisco.dart';
import 'package:flutter_application_1/ADMIN/homeadmin.dart';
import 'package:flutter_application_1/COLLEGE/clghome.dart';
import 'package:flutter_application_1/admin/approvedis-co.dart';
import 'package:flutter_application_1/ADMIN/Viewstdadmin.dart';
import 'package:flutter_application_1/USER/page1.dart';
import 'package:flutter_application_1/STOREKEEPERS/skworks.dart';
import 'package:flutter_application_1/COLLEGE/viewstd.dart';
import 'package:flutter_application_1/USER/add.dart';
import 'package:flutter_application_1/USER/note.dart';
import 'package:flutter_application_1/USER/profile.dart';
import 'package:flutter_application_1/USER/paymentdone.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:flutter_application_1/COMMON/login.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_application_1/list.dart';
import 'package:flutter_application_1/USER/page1.dart';
import 'package:flutter_application_1/USER/rating.dart';
import 'package:flutter_application_1/USER/page2.dart';
import 'package:flutter_application_1/lib/USER/registration.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp( 
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 150, 87, 158)),
        useMaterial3: true,
      ),
      home:Logo(),
    );
  }
}


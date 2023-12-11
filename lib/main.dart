import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splash_screen_example/widgets/CartPage.dart';
import 'package:splash_screen_example/widgets/ListData.dart';
import 'package:splash_screen_example/widgets/ListPage.dart';
import 'home.page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState  extends State<MyApp>{
  @override
void initState() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  super.initState();
}

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" : (context) => HomePage(),
        "CartPage":(context) => CartPage(),
         "ListPage": (context) => ListPage(),
         "ListData":(context) => ListData(),
        
    
      },
    );
  }
}
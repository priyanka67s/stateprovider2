import 'package:flutter/material.dart';
import 'package:stateprovider2/productpage.dart';
import 'package:provider/provider.dart';
import 'package:stateprovider2/Providerclass.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => Providerclass(),)],
     child: MaterialApp(
      title: 'State Provider task',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: productpage(),
    ),);
  }
}




import 'package:flutter/material.dart';
import 'package:food_delivery/pages/login_page.dart';
import 'package:food_delivery/pages/register_page.dart';
import 'package:food_delivery/pages/theme/theme_privider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(), 
      child: const MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterPage(
        onTap: () {
          
        },
      ),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }

}

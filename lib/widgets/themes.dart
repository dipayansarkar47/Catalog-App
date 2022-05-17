import 'package:flutter/material(1).dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.red,
        buttonColor: Colors.black,
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Colors.red),
        // accentColor: Color.black,
        primaryColor: Colors.white,
        appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
            textTheme: Theme.of(context).textTheme),
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        buttonColor: Colors.white,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.red, foregroundColor: Colors.white),
        cardColor: Colors.blueGrey[200],
        canvasColor: Colors.blueGrey[900],
        // accentColor: Colors.white,
        primarySwatch: Colors.red,
        appBarTheme: AppBarTheme(
            color: Colors.black,
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
            textTheme: Theme.of(context).textTheme),
      );

  static Color? darkCreamColor = Colors.blueGrey[700];
}

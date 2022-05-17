import 'package:first_app/Pages/cartpage.dart';
import 'package:first_app/bottom.dart';
import 'package:first_app/core/store.dart';
import 'package:first_app/login.dart';
import 'package:first_app/second.dart';
import 'package:first_app/utils/routes.dart';
import 'package:first_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(
    VxState(
      store: MyStore(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '@codewithbiki',
        home: TutorialHome(),
      ),
    ),
  );
}

class TutorialHome extends StatelessWidget {
  const TutorialHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for
    // the major Material Components.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      // themeMode: ThemeMode.light,
      home: Home(),
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      // darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.home,
      routes: {
        // '/': (context) => Home(),
        MyRoutes.home: (context) => Home(),
        MyRoutes.login: (context) => UserSearch(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}

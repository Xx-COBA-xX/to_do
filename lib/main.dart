import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_llist_app/core/utils/app_router.dart';
import 'package:to_do_llist_app/core/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
          primaryColor: kPrimaryColor,
          useMaterial3: true,
          textTheme: GoogleFonts.interTextTheme(ThemeData.light().textTheme),
        ),
        routerConfig: AppRouter.router);
  }
}

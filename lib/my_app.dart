import 'package:flutter/material.dart';
import 'package:flutter_task/config/routes/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => AppRoute.onGenerate(settings),
    );
  }
}

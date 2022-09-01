import 'package:doctor_consultation_app/views/home/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      onGenerateRoute: (settings) {
        String? route = settings.name;
        if (route != null) {
          if (route == HomeView.routeName) {
            return MaterialPageRoute(
              builder: (context) => const HomeView(),
            );
          }
        }
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
        );
      },
    );
  }
}

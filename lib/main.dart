import 'dart:async';
import 'package:flutter/material.dart';
import 'package:uts_helena_meilina/list.dart';

void main() {
  runApp(const _SplashStateless());
}

class _SplashStateless extends StatelessWidget {
  const _SplashStateless({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            appBarTheme: const AppBarTheme(
          color: Color(0xFFFFFFFF),
        )),
        home: const _SplashStateful(
          title: '',
        ));
  }
}

class _SplashStateful extends StatefulWidget {
  const _SplashStateful({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<_SplashStateful> createState() => _SplashState();
}

class _SplashState extends State<_SplashStateful> {
  // This call to setState tells the Flutter framework that something has
  // changed in this State, which causes it to rerun the build method below
  // so that the display can reflect the updated values. If we changed
  // _counter without calling setState(), then the build method would not be
  // called again, and so nothing would appear to happen.

  @override
  void initState() {
    Timer(const Duration(seconds: 1), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (_) => const DaftarListStateless()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
            margin: const EdgeInsets.only(left: 85, top: 250),
            width: 200,
            child: Image.asset("assets/fujifilm.png")),
        Container(
          margin: const EdgeInsets.only(left: 85, top: 240),
          child: const Text(
            "Made With Love | C 2021",
            style: TextStyle(fontSize: 15),
          ),
        )
      ]),
    );
  }
}

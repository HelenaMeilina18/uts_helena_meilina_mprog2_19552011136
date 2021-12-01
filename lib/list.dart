import 'package:flutter/material.dart';
import 'package:uts_helena_meilina/fujifilm_mint.dart';
import 'package:uts_helena_meilina/fujifilm_blue.dart';
import 'package:uts_helena_meilina/fujifilm_choral.dart';
import 'package:uts_helena_meilina/fujifilm_pink.dart';
import 'package:uts_helena_meilina/fujifilm_lavender.dart';

void main() => runApp(const DaftarListStateless());

class DaftarListStateless extends StatelessWidget {
  const DaftarListStateless({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
          color: Color(0xFFFFFFFF),
        )),
        home: const _DaftarListStateful(
          title: '',
        ));
  }
}

class _DaftarListStateful extends StatefulWidget {
  const _DaftarListStateful({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<_DaftarListStateful> createState() => _DaftarListState();
}

class _DaftarListState extends State<_DaftarListStateful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          leading: Container(
              padding: EdgeInsets.all(10),
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.orange[900]),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ))),
                child: Icon(
                  Icons.menu,
                  size: 15.0,
                  color: Colors.white,
                ),
              )),
          title: Container(
              padding: EdgeInsets.only(left: 60),
              child: Image.asset(
                'assets/fujifilm-banner.png',
                height: 100,
                width: 100,
              )),
          actions: [
            Container(
                width: 55,
                padding: EdgeInsets.all(10),
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              side: BorderSide(color: Colors.white)))),
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    size: 15.0,
                    color: Colors.white,
                  ),
                )),
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
                height: 30,
                margin: EdgeInsets.only(
                  top: 10,
                  right: 20,
                  left: 10,
                ),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                    style: (TextStyle(color: Colors.white, fontSize: 10)),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(13.0),
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.grey),
                    ))),
            Container(
              height: 770,
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Stack(children: [
                    ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      tileColor: Color(0xff70b1a1),
                      contentPadding:
                          EdgeInsets.only(top: 5, left: 10, right: 5),
                      subtitle: Stack(children: [
                        Container(
                          height: 100,
                          margin: EdgeInsets.only(left: 230),
                          child:
                              Image.asset("assets/InstaxMini7plus_Mint_R.png"),
                        ),
                        Column(children: [
                          Row(children: [
                            Text("Limited Edition",
                                style: TextStyle(
                                  fontSize: 9.0,
                                  color: Colors.white,
                                )),
                          ]),
                          SizedBox(height: 7),
                          Row(children: [
                            Text("Instax Mini Mint 7+",
                                style: TextStyle(
                                    fontSize: 11.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ]),
                          SizedBox(height: 1),
                          Row(children: [
                            Text("\$ 49.90",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                )),
                            SizedBox(height: 55),
                          ]),
                          Container(
                            height: 25,
                            width: 50,
                            margin: EdgeInsets.only(right: 270, bottom: 10),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => fujifilm_mint()));
                              },
                              child: Text(
                                'Buy',
                                style: TextStyle(
                                    color: Color(0xff70b1a1), fontSize: 9),
                              ),
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          )
                        ])
                      ]),
                    )
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(children: [
                    ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      tileColor: Color(0xff77a0c6),
                      contentPadding:
                          EdgeInsets.only(top: 5, left: 10, right: 5),
                      subtitle: Stack(children: [
                        Container(
                          height: 100,
                          margin: EdgeInsets.only(left: 230),
                          child:
                              Image.asset("assets/InstaxMini7plus_Blue_R.png"),
                        ),
                        Column(children: [
                          Row(children: [
                            Text("Limited Edition",
                                style: TextStyle(
                                  fontSize: 9.0,
                                  color: Colors.white,
                                )),
                          ]),
                          SizedBox(height: 7),
                          Row(children: [
                            Text("Instax Mini Blue 7+",
                                style: TextStyle(
                                    fontSize: 11.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ]),
                          SizedBox(height: 1),
                          Row(children: [
                            Text("\$ 50.90",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                )),
                            SizedBox(height: 55),
                          ]),
                          Container(
                            height: 25,
                            width: 50,
                            margin: EdgeInsets.only(right: 270, bottom: 10),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => fujifilm_blue()));
                              },
                              child: Text(
                                'Buy',
                                style: TextStyle(
                                    color: Color(0xff77a0c6), fontSize: 9),
                              ),
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          )
                        ])
                      ]),
                    )
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(children: [
                    ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      tileColor: Color(0xffb0463c),
                      contentPadding:
                          EdgeInsets.only(top: 5, left: 10, right: 5),
                      subtitle: Stack(children: [
                        Container(
                          height: 100,
                          margin: EdgeInsets.only(left: 230),
                          child: Image.asset(
                              "assets/InstaxMini7plus_Choral_R.png"),
                        ),
                        Column(children: [
                          Row(children: [
                            Text("Limited Edition",
                                style: TextStyle(
                                  fontSize: 9.0,
                                  color: Colors.white,
                                )),
                          ]),
                          SizedBox(height: 7),
                          Row(children: [
                            Text("Instax Mini Choral 7+ ",
                                style: TextStyle(
                                    fontSize: 11.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ]),
                          SizedBox(height: 1),
                          Row(children: [
                            Text("\$ 51.90",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                )),
                            SizedBox(height: 55),
                          ]),
                          Container(
                            height: 25,
                            width: 50,
                            margin: EdgeInsets.only(right: 270, bottom: 10),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => fujifilm_choral()));
                              },
                              child: Text(
                                'Buy',
                                style: TextStyle(
                                    color: Color(0xffb0463c), fontSize: 9),
                              ),
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          )
                        ])
                      ]),
                    )
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(children: [
                    ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      tileColor: Color(0xffcf9496),
                      contentPadding:
                          EdgeInsets.only(top: 5, left: 10, right: 5),
                      subtitle: Stack(children: [
                        Container(
                          height: 100,
                          margin: EdgeInsets.only(left: 230),
                          child:
                              Image.asset("assets/InstaxMini7plus_Pink_R.png"),
                        ),
                        Column(children: [
                          Row(children: [
                            Text("Limited Edition",
                                style: TextStyle(
                                  fontSize: 9.0,
                                  color: Colors.white,
                                )),
                          ]),
                          SizedBox(height: 7),
                          Row(children: [
                            Text("Instax Mini Pink 7+ ",
                                style: TextStyle(
                                    fontSize: 11.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ]),
                          SizedBox(height: 1),
                          Row(children: [
                            Text("\$ 52.90",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                )),
                            SizedBox(height: 55),
                          ]),
                          Container(
                            height: 25,
                            width: 50,
                            margin: EdgeInsets.only(right: 270, bottom: 10),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => fujifilm_pink()));
                              },
                              child: Text(
                                'Buy',
                                style: TextStyle(
                                    color: Color(0xffcf9496), fontSize: 9),
                              ),
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          )
                        ])
                      ]),
                    )
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(children: [
                    ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      tileColor: Color(0xff855f8c),
                      contentPadding:
                          EdgeInsets.only(top: 5, left: 10, right: 5),
                      subtitle: Stack(children: [
                        Container(
                          height: 100,
                          margin: EdgeInsets.only(left: 230),
                          child: Image.asset(
                              "assets/InstaxMini7plus_Lavender_R.png"),
                        ),
                        Column(children: [
                          Row(children: [
                            Text("Limited Edition",
                                style: TextStyle(
                                  fontSize: 9.0,
                                  color: Colors.white,
                                )),
                          ]),
                          SizedBox(height: 7),
                          Row(children: [
                            Text("Instax Mini Lavender 7+ ",
                                style: TextStyle(
                                    fontSize: 11.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ]),
                          SizedBox(height: 1),
                          Row(children: [
                            Text("\$ 53.90",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                )),
                            SizedBox(height: 55),
                          ]),
                          Container(
                            height: 25,
                            width: 50,
                            margin: EdgeInsets.only(right: 270, bottom: 10),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => fujifilm_lavender()));
                              },
                              child: Text(
                                'Buy',
                                style: TextStyle(
                                    color: Color(0xff855f8c), fontSize: 9),
                              ),
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          )
                        ])
                      ]),
                    )
                  ]),
                ],
              ),
            )
          ],
        )));
  }
}

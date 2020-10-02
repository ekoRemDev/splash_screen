import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final Color colorGradient1 = Color.fromRGBO(161,214,202, 1);
  final Color colorGradient2 = Color.fromRGBO(44,213,196, 1);
  final Color colorGradient3 = Color.fromRGBO(161,214,202, 1);
  final Color colorGradient4 = Color.fromRGBO(44,213,196, 1);
  final Color colorTitle = Color.fromRGBO(255,255,255, 1);
  final Color colorSlogan = Color.fromRGBO(255,255,255, 0.6);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [
                      0.2,
                      0.4,
                      0.6,
                      0.9
                    ],
                    colors: [
                      colorGradient1,
                      colorGradient2,
                      colorGradient3,
                      colorGradient4
                    ])),
          ),


          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              // logo
              Container(
                height: MediaQuery.of(context).size.height * 0.60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: colorGradient4),
                        image: new DecorationImage(
                          image: new AssetImage('assets/appicon.png'),
                          fit: BoxFit.contain ,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 1.0,
                            spreadRadius: 0.0,
                            offset: Offset(0.0, 2.0,), // shadow direction: bottom right
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // title
              Container(
                height: MediaQuery.of(context).size.height * 0.10,
                child: Text(
                  "PIU",
                  style: TextStyle(
                      fontSize: 42.0,
                      color: colorTitle,
                      fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              // slogan
              Container(
                height: MediaQuery.of(context).size.height * 0.10,
                child: Text(
                  "Meetings made easy",
                  style: TextStyle(
                      fontSize: 24.0,
                      color: colorSlogan,
                      fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic),
                ),
              ),

              Container(
                height: MediaQuery.of(context).size.height * 0.20,
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                            'assets/loading.gif',
                            width: 50,
                            height: 50
                        ),
                      ],
                    ),
                  ],
                ),
              ),





            ],
          )

        ],
      ),
    );
  }
}

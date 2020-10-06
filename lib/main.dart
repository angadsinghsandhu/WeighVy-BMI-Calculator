import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // Root widget of the application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // The theme of the application.
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// This widget is the home page of your application
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isMale = false;
  bool isFemale = false;
  int slideVal = 180;
  int weight = 180;
  int age = 180;

  // helper functions
  void maleCase() {}
  void femaleCase() {}
  void slider() {}
  void setWeight() {}
  void setAge() {}

  // color pallete
  static final notBarColor = const Color(0xff070A19);
  static final primaryColor = const Color(0xff090E21);
  static final secondaryColor = const Color(0xff1D1E33);
  static final accentColor = const Color(0xffEB1555);
  static final iconColor = const Color(0xff4C4F5E);

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return Scaffold(
      // appBar: AppBar(
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),
      body: Container(
        color: primaryColor,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 3, left: 10, right: 10, top: 7),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "BMI Calculator",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                )),
            Flexible(
              flex: 3,
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, right: 10.0, left: 10.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Flexible(
                              fit: FlexFit.tight,
                              child: RaisedButton(
                                color: secondaryColor,
                                shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(15.0)),
                                onPressed: () {
                                  print("male btn pressed");
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Image.asset(
                                        'assets/male-128.png',
                                        height: 100,
                                        width: 100,
                                      ),
                                    ),
                                    Text(
                                      "Male",
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, right: 10.0, left: 10.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Flexible(
                              fit: FlexFit.tight,
                              child: RaisedButton(
                                color: secondaryColor,
                                shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(15.0)),
                                onPressed: () {
                                  print("female btn pressed");
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Image.asset(
                                        'assets/female-128.png',
                                        height: 100,
                                        width: 100,
                                      ),
                                    ),
                                    Text(
                                      "Female",
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
            //
            //
            //
            Flexible(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, bottom: 10.0, right: 10.0, left: 10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      color: secondaryColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Height",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w300),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "180",
                                style: TextStyle(
                                    fontSize: 75,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800),
                              ),
                              Text(
                                "cm",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w200),
                              )
                            ],
                          ),
                          SliderTheme(
                            data: SliderThemeData(
                              // activeTickMarkColor: accentColor,
                              // disabledActiveTickMarkColor: accentColor,
                              // disabledActiveTrackColor: accentColor,
                              // disabledInactiveTickMarkColor: accentColor,
                              trackHeight: 0.9,
                              activeTrackColor: Colors.white70,
                              inactiveTrackColor: Colors.white38,
                              overlayColor: notBarColor,
                              thumbColor: accentColor,
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 20.0),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 25.0),
                            ),
                            child: Slider(
                              value: 250,
                              onChanged: (newVal) {
                                print("slider value changed");
                              },
                              min: 50,
                              max: 300,
                              label: "180",
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )),
            //
            //
            //
            Flexible(
              flex: 3,
              child: Row(
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Container(
                          color: secondaryColor,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Weight",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "60",
                                      style: TextStyle(
                                          fontSize: 75,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      "kgs",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: FloatingActionButton(
                                          elevation: 0.0,
                                          child: new Icon(Icons.remove),
                                          backgroundColor: iconColor,
                                          onPressed: () {
                                            print("minus btn");
                                          }),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: FloatingActionButton(
                                          elevation: 0.0,
                                          child: new Icon(Icons.add),
                                          backgroundColor: iconColor,
                                          onPressed: () {
                                            print("plus btn");
                                          }),
                                    ),
                                  ],
                                )
                              ]),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Container(
                          alignment: Alignment.center,
                          color: secondaryColor,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Age",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "20",
                                      style: TextStyle(
                                          fontSize: 75,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      "yrs",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: FloatingActionButton(
                                          elevation: 0.0,
                                          child: new Icon(Icons.remove),
                                          backgroundColor: iconColor,
                                          onPressed: () {
                                            print("minus btn");
                                          }),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: FloatingActionButton(
                                          elevation: 0.0,
                                          child: new Icon(Icons.add),
                                          backgroundColor: iconColor,
                                          onPressed: () {
                                            print("plus btn");
                                          }),
                                    ),
                                  ],
                                )
                              ]),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: RaisedButton(
                        color: accentColor,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0)),
                        onPressed: () {
                          print("calculate btn pressed");
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "CALCULATE",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

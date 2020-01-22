import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  static TextEditingController usernameController = TextEditingController(text: '');


  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor:Colors.purple,
      resizeToAvoidBottomPadding : true,

      body: SingleChildScrollView ( // this will make your body scrollable

        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        Container(

        margin: const EdgeInsets.only(left: 14 ,top : 100,right: 20),
        //padding: const EdgeInsets.all(8.0),

        child: Image.asset(
        'assets/images/searcher.png',
          height: 250,

          fit: BoxFit.fitHeight,
        )),
          Container(

            margin: const EdgeInsets.only(left: 14 ,top : 60,right: 20),
            //padding: const EdgeInsets.all(8.0),

            child:                   Row(
                children: [

                  Expanded( child:
                  GestureDetector(
                      onTap: () {

                      } ,
                      child: Container(
                        padding:  const EdgeInsets.only(top: 8 ,bottom: 8 , left: 15 , right: 15),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 204, 249, 0.3),

                            borderRadius: BorderRadius.all(Radius.circular(4.0))),


                        child: Row(
                            children: <Widget>[
                              Expanded(  child: TextField(
                            style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                                decoration: new InputDecoration(
                                    hintText: "Search...eg Suburb, City",
                                    border: InputBorder.none,

                                    hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                          labelStyle: TextStyle(
                          color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                        )
                                ),
                          controller: usernameController,
                          onChanged: (content) {
                          },)),Icon(Icons.search,color:Colors.white,)]),

                      ) )),


                ]

            ),

          ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[

              //padding: const EdgeInsets.all(8.0),

                     Container(
                    margin: const EdgeInsets.only(left: 24 ,top :70,right: 24),

                    child:  FlatButton(
                      padding:  const EdgeInsets.only(top: 14 ,bottom: 14 , left: 34 , right: 34),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(4.0),
                            topLeft: Radius.circular(4.0),
                            bottomRight: Radius.circular(4.0)
                            ,
                            bottomLeft: Radius.circular(4.0)
                        ),
                      ),

                      child: Text("SEARCH",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                      color: Colors.orange,
                      onPressed: () {

                        //validateAndSave();




                      },
                    ))])

          ],
        ),
      ),
    );
  }
}

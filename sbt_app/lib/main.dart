import 'package:flutter/material.dart';
import 'package:sbt_app/view/ThemeSetting.dart/model_theme.dart';
import 'package:sbt_app/view/splashScreen.dart';
import 'package:provider/provider.dart';

void main() async{
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

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ModelTheme(),
      child: Consumer<ModelTheme>(
        builder: (context, ModelTheme themeNotifier, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: themeNotifier.isDark
            ? ThemeData(
                brightness: Brightness.dark,
              )
            : ThemeData(
              fontFamily: 'OpenSans',
              primaryColor: Colors.white,
              textSelectionColor: Color.fromRGBO(65, 182, 230, 1),
              accentColor: Color.fromRGBO(65, 182, 230, 1),
              buttonColor: Color.fromRGBO(0, 71, 186, 1),
              indicatorColor: Color.fromRGBO(255, 212, 95, 1),
              shadowColor: Color.fromRGBO(171, 172, 175, 1),
              backgroundColor: Colors.white,
              splashColor: Colors.white
            ),
            home:SplashScreen(),
        );
      }),
    );
  }
}

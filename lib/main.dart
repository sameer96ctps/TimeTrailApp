import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_2/screens/signing_screen.dart';
import 'package:flutter_app_2/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

/*  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),home: const MyHomePage());
  }*/

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
/*

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
*/

/*class _MyHomePageState extends State<MyHomePage> {
  var counter=0;
  @override
  Widget build(BuildContext context) {
     return  Scaffold(appBar:AppBar(title: const Text('Stateful Widget'),backgroundColor: Colors.cyan,centerTitle: true),
       body: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [ Text('Counter : $counter',style: const TextStyle(fontSize: 34)),
       ElevatedButton(onPressed: () {
         setState(() {
           counter++;
         });
         if (kDebugMode) {
           print('Counter Value : $counter');
         }
       }, child: const Text('Increment by 1'))],)),
     );
  }
}*/

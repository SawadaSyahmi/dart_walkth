import 'package:flutter/material.dart';

 /////////////////////////// Main Code Run Area/////////////////////////////////////////////////////
// Global scope variable
var globalVar = "I am a global variable";
void main() {
    // Local scope variable
  var localVar = "I am a local variable";

  // Using var keyword to declare a variable
  var dynamicVar = "I can hold any type of value";
  
  // Using dynamic keyword to declare a variable
  dynamic dynamicType = "I can change my type dynamically";

  // Using final keyword to declare an immutable variable
  final int finalVar = 10;

  // Using const keyword to declare a compile-time constant
  const double PI = 3.14;

  print(globalVar); // Accessing global variable
  print(localVar);  // Accessing local variable
  print(dynamicVar); // Accessing dynamic variable
  print(dynamicType); // Accessing dynamic variable
  print(finalVar); // Accessing final variable
  print(PI); // Accessing constant

  // Trying to reassign value to final variable will cause an error
  // finalVar = 20; // Uncommenting this line will result in a compilation error

  // Trying to reassign value to const variable will cause an error
  // PI = 3.14159; // Uncommenting this line will result in a compilation error

  // Block scope example
  {
    var blockVar = "I am a block-scoped variable";
    print(blockVar);
  }
  // blockVar is not accessible here due to block scope
  // print(blockVar); // Uncommenting this line will result in an error
 
 
 
 
  runApp(const MyApp());
}



 /////////////////////////// App main theme Area/////////////////////////////////////////////////////
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData( 
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}



 /////////////////////////// App first page theme Area/////////////////////////////////////////////////////

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


enum Food {
  fish("fish"), 
  lamb("lamb"),
  beef("beef");  
  
  final String foodtype;
  const Food(this.foodtype);


}


 /////////////////////////// App first page fucntion/widget Area/////////////////////////////////////////////////////
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String name = "syahmi";
  int age = 28;
  bool isStudent = false;
  String fav = Food.beef.foodtype;
  bool boy = true;




 /////////////////////////// Function Area/////////////////////////////////////////////////////
  void _incrementCounter() {
    setState(() {
      _counter++;

    });
  }

/////////////////////////// Widget Area ///////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'My name is $name'' $age'' $isStudent'
            ),
            Text(
              'my fav food $fav'

            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'i am a  $boy'

            ),

          
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}


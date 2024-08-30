import 'package:counter_provider/pages/home_page.dart';
import 'package:counter_provider/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//IMPLEMENTING PROVIDER - MY OWN NOTE
//1 : need to create a class and WITH CHANGENOTIFIER
//like class CounterProvider with ChangeNotifier{}
//need to declare variable and method
//2: intialize that provider class as top of the Widget
//3: create Object of that class where we want to use that varibale
//4: Use value with that Object
//5: to avoid rebuild of all Widgets of page, use Consumer with Widget which we want to rebuild that only

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //after creating a class of Provider, need to initialize that class as top Widget
    //to get globally
    //so need to Call before MaterialApp()
    // and need to provide MaterialApp() as child of that >ChangeNotifier provider
    //(inside Create.. we need to provide Class name of Provider which we created)
    return ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

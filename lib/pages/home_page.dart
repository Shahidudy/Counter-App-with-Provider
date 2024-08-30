import 'package:counter_provider/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    print('Build');
    final _counterProvider =
        Provider.of<CounterProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Consumer<CounterProvider>(builder: (context, value, child) {
          return Text(
            value.count.toString(),
            style: TextStyle(fontSize: 90),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counterProvider.Inc();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

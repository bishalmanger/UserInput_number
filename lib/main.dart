import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
           TextField(
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(border: OutlineInputBorder()),
           ),
          SizedBox(height: 100,),
          TextFormField(
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(border: OutlineInputBorder()),
           )
        ],),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador Plus',
      theme: ThemeData(
            primarySwatch: Colors.green,
      ),
      home: const DioContador(title: 'Contador Plus'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DioContador extends StatefulWidget {
  const DioContador({super.key, required this.title});

  final String title;


  @override
  State<DioContador> createState() => _DioContadorState();
}

class _DioContadorState extends State<DioContador> {
  int _counter = 0;
  int _counter2 = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _incrementCounterplus() {
    setState(() {
      _counter2++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter2--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Contador simples:',
              style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold,) ,
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              width: 200,
              height: 50,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '$_counter',
                    style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green)
                  ),
                  IconButton(onPressed: _incrementCounter, icon: const Icon(Icons.add_circle, size: 30, color:Colors.green,))
                ],
              ),
            ),
            const Text(
              'Contador Plus:',
              style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold,) ,
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              width: 200,
              height: 50,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed: _decrementCounter, icon: const Icon(Icons.remove_circle, size: 30, color:Colors.green,)),
                  Text(
                      '$_counter2',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color:(_counter2 >=0)? Colors.green: Colors.red )
                  ),
                  IconButton(onPressed: _incrementCounterplus, icon: const Icon(Icons.add_circle, size: 30, color:Colors.green,))
                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}
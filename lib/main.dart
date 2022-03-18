import 'package:flutter/material.dart';
import 'package:hackernews/description_place.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final String descriptionDummy = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam sapien accumsan risus bibendum, et condimentum ipsum varius. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque posuere malesuada quam id maximus. Sed eleifend vestibulum dictum. Nunc pulvinar dictum risus, ut tristique diam aliquet sed. Aliquam vitae purus a nisl tristique porttitor. Nulla at suscipit nibh, eu elementum massa.';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Holanda")
        ),
        body: DescriptionPlace(namePlace: "Bahamas", stars: 4, descriptionPlace: descriptionDummy)
      )
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
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

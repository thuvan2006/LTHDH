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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
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
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {
      //     // This call to setState tells the Flutter framework that something has
      //     // changed in this State, which causes it to rerun the build method below
      //     // so that the display can reflect the updated values. If we changed
      //     // _counter without calling setState(), then the build method would not be
      //     // called again, and so nothing would appear to happen.
    });
  }

  List<Widget> _children = [];
  int idx = 0;

  @override
  void initState() {
    super.initState();

    _children = [
      ElevatedButton(
          key: Key(idx.toString()), child: Text("Btn $idx"), onPressed: () {})
    ];
  }

  void addChildHandler() {
    idx++;
    setState(() {
      var newChild = ElevatedButton(
          key: Key(idx.toString()), child: Text("Btn $idx"), onPressed: () {});
      _children.add(newChild);
    });
  }

  @override
  Widget build(BuildContext context) {
    // Create new List object:
    // ignore: unnecessary_null_comparison
    _children = _children == null ? [] : List.from(_children);
    return Scaffold(
        appBar: AppBar(title: const Text("Flutter Column Example")),
        body: Center(child: Column(children: _children)),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ));
  }
}

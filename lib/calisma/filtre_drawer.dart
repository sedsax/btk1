import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const AppDrawer(), // left side
      appBar: AppBar(
        title: const Text("Title"),
      ),
      body: ListView(
        children:[
          const ListTile(
            title: Text("Body"),
          ),
          ListTile(
            title: ElevatedButton(
              child: const Text("Open Drawer"),
              onPressed: () {
                // _scaffoldKey.currentState?.openDrawer(); // left side
                _scaffoldKey.currentState?.openEndDrawer(); // right side
              },
            ),
          ),
        ],
      ),
      endDrawer: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7, // Özelleştirebileceğiniz boyutu burada ayarlayabilirsiniz.
          maxHeight: MediaQuery.of(context).size.height * 0.6,
        ),
        child: const AppDrawer(),    
      ),
    );
  }
}

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children:const [
          DrawerHeader(
            child: Text("Header"),
          ),
          ListTile(
            title: Text("Item 1"),
          ),
          ListTile(
            title: Text("Item 2"),
          ),
          ListTile(
            title: Text("Item 3"),
          ),
        ],
      ),
    );
  }
}

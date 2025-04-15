import 'package:flutter/material.dart';

void main() async {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'TestApp', debugShowCheckedModeBanner: false, home: FirstPage());
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("title"),
      ),
      body: Center(child: Text('First page')),
      floatingActionButton: FloatingActionButton(
        onPressed:
            () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => SecondPage())),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("title"),
      ),
      body: Center(child: Text('Second page')),
    );
  }
}

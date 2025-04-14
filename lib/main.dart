import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/router.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  TestApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'TestApp',
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
    );
  }
}

@RoutePage()
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
        onPressed: () => context.router.push(SecondRoute()),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

@RoutePage()
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

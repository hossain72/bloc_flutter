import 'package:bloc_flutter/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'logic/cubit/counter_cubit.dart';

void main() {
  final CounterState counterState1 = CounterState(counterValue: 0);
  final CounterState counterState2 = CounterState(counterValue: 0);
  print(counterState1 == counterState2);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppRouter _appRouter = AppRouter();

  @override
  void dispose() {
    super.dispose();
    _appRouter.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: _appRouter.onGenerateRoute,
    );
  }
}

import 'package:bloc_flutter/logic/cubit/counter_cubit.dart';
import 'package:bloc_flutter/logic/cubit/internet_cubit.dart';
import 'package:bloc_flutter/presentation/screens/home_screen.dart';
import 'package:bloc_flutter/presentation/screens/second_screen.dart';
import 'package:bloc_flutter/presentation/screens/third_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  final CounterCubit _counterCubit = CounterCubit();

  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                value: _counterCubit,
                child: HomeScreen(
                    title: 'Home Screen', color: Colors.blueAccent)));
      case '/second':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                value: _counterCubit,
                child: SecondScreen(
                    title: "Second Screen", color: Colors.redAccent)));
      case '/third':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                value: _counterCubit,
                child: ThirdScreen(
                    title: "Third screen", color: Colors.greenAccent)));
      default:
        return null;
    }
  }

  void dispose(){
    _counterCubit.close();
  }

}

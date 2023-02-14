import 'package:bloc_app/increment/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './screen/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) => CounterBloc(),
      child: MaterialApp(
        title: 'Flutter BLoC',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const CounterScreen(title: 'Counter Page'),
      ),
    );
  }
}
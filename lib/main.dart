import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:stud/bloc_observable.dart';
import 'package:stud/ui/pages/detail_page.dart';
import 'package:stud/ui/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  // await Hive.initFlutter();
  // Hive.registerAdapter(CharacterAdapter());
  // Hive.registerAdapter(InfoAdapter());
  // Hive.registerAdapter(ResultsAdapter());
  // await Hive.openBox<Character>('character');
  // await Hive.openBox<Info>('info');
  // await Hive.openBox<Results>('results');

  WidgetsFlutterBinding.ensureInitialized();



  BlocOverrides.runZoned(() => runApp(const MyApp()),
      blocObserver: CharacterBlocObservable());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rick & Morty',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.black,
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
          headline2: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black),
          headline3: TextStyle(fontSize: 24, color: Colors.white),
          bodyText1: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w200, color: Colors.white),
          bodyText2: TextStyle(
              fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),
          caption: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w100, color: Colors.blue,),
        ),
      ),
      home: HomePage(title: 'Rick & Morty'),
    );
  }
}

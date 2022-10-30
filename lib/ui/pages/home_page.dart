import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stud/data/repo/api_service.dart';
import 'package:stud/ui/pages/search_page.dart';
import '../../bloc/character_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  final repository = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        centerTitle: true,
        title: Text(
          title,
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      body: BlocProvider(
        create: (context) => CharacterBloc(characterRepo: repository),
        child: Container(
            decoration: const BoxDecoration(color: Colors.black),
            child: const SearchPage()),
      ),
    );
  }
}

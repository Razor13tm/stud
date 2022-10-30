import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:stud/bloc/character_bloc.dart';
import 'package:stud/data/repo/local/character_db_service.dart';
import 'package:stud/ui/widgets/custom_grid.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../data/models/character.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late Character _currentCharacter;
  List<Results> _currentResults = [];
  int _currentPage = 1;
  String _currentSearchString = '';
  CharacterDBService characterService = CharacterDBService();

  final RefreshController refreshController = RefreshController();
  bool _isPagination = false;

  @override
  void initState() {
    if (_currentResults.isEmpty) {
      context
          .read<CharacterBloc>()
          .add(const CharacterEvent.fetch(name: '', page: 1));
    }
    super.initState();
  }

  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CharacterBloc>().state;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 15, bottom: 10, left: 16, right: 16),
          child: TextField(
            style: const TextStyle(color: Colors.white, fontFamily: 'Roboto'),
            cursorColor: Colors.white,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color.fromRGBO(86, 86, 86, 0.8),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              hintText: 'Enter name',
              hintStyle: const TextStyle(color: Colors.white),
            ),
            onChanged: (value) {
              _currentPage = 1;
              _currentResults = [];
              _currentSearchString = value;
              context
                  .read<CharacterBloc>()
                  .add(CharacterEvent.fetch(name: value, page: _currentPage));
            },
          ),
        ),
        Expanded(
          child: state.when(
              loading: () {
                if (!_isPagination) {
                  return Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircularProgressIndicator(strokeWidth: 2),
                        SizedBox(width: 10),
                        Text('Loading...')
                      ],
                    ),
                  );
                } else {
                  return _customGridView(_currentResults);
                }
              },
              loaded: (characterLoaded) {
                _currentCharacter = characterLoaded;
                if (_isPagination) {
                  _currentResults = List.from(_currentResults)
                    ..addAll(_currentCharacter.results);
                  refreshController.loadComplete();
                  _isPagination = false;
                } else {
                  _currentResults = _currentCharacter.results;
                }
                return _currentResults.isNotEmpty
                    ? _customGridView(_currentResults)
                    : const SizedBox();
              },
              error: () => const Text('Nothing found...')),
        ),
      ],
    );
  }

  Widget _customGridView(List<Results> currentResults) {
    return SmartRefresher(
      controller: refreshController,
      enablePullUp: true,
      enablePullDown: true,
      onRefresh: () {
        context
            .read<CharacterBloc>()
            .add(const CharacterEvent.fetch(name: '', page: 1));
      },
      onLoading: () {
        _isPagination = true;
        _currentPage++;
        if (_currentPage <= _currentCharacter.info.pages) {
          context.read<CharacterBloc>().add(CharacterEvent.fetch(
              name: _currentSearchString, page: _currentPage));
        } else {
          refreshController.loadNoData();
        }
      },
      child: GridView.builder(
          itemCount: _currentResults.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 3.0,
            crossAxisSpacing: 3.0,
          ),
          itemBuilder: (context, index) {
            final result = currentResults[index];
            return CustomGrid(result: result);
          }),
    );
  }
}

import 'package:app/features/search/bloc/search_bloc.dart';
import 'package:app/features/search/view/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchBloc>(
      create: (context) => SearchBloc(),
      child: const SearchView()
    );
  }
}
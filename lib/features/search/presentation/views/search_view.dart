import 'package:flutter/material.dart';
import 'package:shopapp/features/search/presentation/views/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SearchViewBody'),
      ),
      body: const SearchViewBody(),
    );
  }
}

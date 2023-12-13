import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:search_activity/widgets/search_list_tile.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<Map<String, String>> _searchInformation = [
    {
      'avartar': 'assets/images/steve_jobs.jpg',
      'title': 'Steve Jobs',
      'subtitle': 'Co-founder of Apple',
      'followers': '1.2M',
    },
    {
      'avartar': 'assets/images/bill_gates.jpg',
      'title': 'Bill Gates',
      'subtitle': 'Co-founder of Microsoft',
      'followers': '1.5M',
    },
    {
      'avartar': 'assets/images/Mark_zuckerberg.jpg',
      'title': 'Mark Zuckerberg',
      'subtitle': 'Co-founder of Facebook',
      'followers': '1.8M',
    },
    {
      'avartar': 'assets/images/Jeff_Bezos.jpg',
      'title': 'Jeff Bezos',
      'subtitle': 'Founder of Amazon',
      'followers': '2.1M',
    },
    {
      'avartar': 'assets/images/Elon_Musk.jpg',
      'title': 'Elon Musk',
      'subtitle': 'Founder of Tesla',
      'followers': '2.4M',
    },
    {
      'avartar': 'assets/images/Nico.jpg',
      'title': 'Nico',
      'subtitle': 'Founder of Nomad Coders',
      'followers': '200M',
    },
    {
      'avartar': 'assets/images/NewJeans.jpg',
      'title': 'NewJeans',
      'subtitle': 'Girl Group',
      'followers': '200M',
    },
    {
      'avartar': 'assets/images/barack_obama.jpg',
      'title': 'Barack Obama',
      'subtitle': 'Former President of the United States',
      'followers': '200M',
    },
  ];

  void _onScaffoldTap() {
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onScaffoldTap,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Search',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 5),
              const CupertinoSearchTextField(),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.grey.shade300,
                    indent: 70,
                  ),
                  itemCount: _searchInformation.length,
                  itemBuilder: (context, index) => SearchListTile(
                      searchInformation: _searchInformation[index]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

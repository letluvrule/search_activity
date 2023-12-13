import 'package:flutter/material.dart';
import 'package:search_activity/widgets/all_list_tile.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  final _tabs = [
    "All",
    "Recipes",
    "Mentions",
    "Follows",
    "Likes",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: const Text(
            'Activity',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          bottom: TabBar(
            splashFactory: NoSplash.splashFactory,
            tabAlignment: TabAlignment.center,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            isScrollable: true,
            labelStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
            indicatorColor: Colors.black,
            labelColor: const Color.fromRGBO(0, 0, 0, 1),
            unselectedLabelColor: Colors.grey.shade500,
            tabs: [
              for (var tab in _tabs)
                Tab(
                  text: tab,
                ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const AllListTile(),
            for (var tab in _tabs.skip(1))
              Center(
                child: Text(tab),
              )
          ],
        ),
      ),
    );
  }
}

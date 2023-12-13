import 'package:flutter/material.dart';

class AllListTile extends StatefulWidget {
  const AllListTile({super.key});

  @override
  State<AllListTile> createState() => _AllListTileState();
}

class _AllListTileState extends State<AllListTile> {
  final List<Map<String, dynamic>> _activityInformation = [
    {
      'avartar': 'assets/images/steve_jobs.jpg',
      'title': 'Steve Jobs',
      'time': '4h',
      'relation': 'Followed you',
      'subtitle': 'Co-founder of Apple',
      'isFollowing': true,
    },
    {
      'avartar': 'assets/images/bill_gates.jpg',
      'title': 'Bill Gates',
      'time': '6h',
      'relation': 'Followed you',
      'subtitle': 'Co-founder of Microsoft',
      'isFollowing': true,
    },
    {
      'avartar': 'assets/images/Mark_zuckerberg.jpg',
      'title': 'Mark Zuckerberg',
      'time': '6h',
      'relation': 'Mentioned you',
      'subtitle': 'Co-founder of Facebook',
      'isFollowing': true,
    },
    {
      'avartar': 'assets/images/Jeff_Bezos.jpg',
      'title': 'Jeff Bezos',
      'time': '7h',
      'relation': 'Mentioned you',
      'subtitle': 'Founder of Amazon',
      'isFollowing': true,
    },
    {
      'avartar': 'assets/images/Elon_Musk.jpg',
      'title': 'Elon Musk',
      'time': '8h',
      'relation': 'Mentioned you',
      'subtitle': 'Founder of Tesla',
      'isFollowing': true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage(_activityInformation[index]['avartar']),
                  ),
                  title: Row(
                    children: [
                      if (_activityInformation[index]['title'] != null)
                        Text(
                          _activityInformation[index]['title'],
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      const SizedBox(width: 3),
                      const Icon(
                        Icons.verified,
                        color: Colors.blue,
                        size: 16,
                      ),
                    ],
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (_activityInformation[index]['subtitle'] != null)
                        Text(_activityInformation[index]['subtitle']),
                      if (_activityInformation[index]['relation'] != null)
                        Text(
                          _activityInformation[index]['relation'],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                    ],
                  ),
                  trailing: GestureDetector(
                    onTap: () {
                      setState(() {
                        _activityInformation[index]['isFollowing'] =
                            !_activityInformation[index]['isFollowing'];
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 75,
                      height: 30,
                      decoration: BoxDecoration(
                        color: _activityInformation[index]['isFollowing']
                            ? Colors.blue
                            : Colors.white,
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        'Following',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: _activityInformation[index]['isFollowing']
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  height: 1,
                  thickness: 1,
                  indent: 70,
                );
              },
              itemCount: _activityInformation.length,
            ),
          ),
        ],
      ),
    );
  }
}

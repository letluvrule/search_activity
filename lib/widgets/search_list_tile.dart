import 'package:flutter/material.dart';

class SearchListTile extends StatefulWidget {
  final Map<String, String> searchInformation;

  const SearchListTile({
    super.key,
    required this.searchInformation,
  });

  @override
  State<SearchListTile> createState() => _SearchListTileState();
}

class _SearchListTileState extends State<SearchListTile> {
  late final Map<String, String> _searchInformation = widget.searchInformation;
  bool _isFollowed = false;

  void _toggleFollowButton() {
    setState(() {
      _isFollowed = !_isFollowed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(_searchInformation['avartar']!),
      ),
      title: Row(
        children: [
          if (_searchInformation['title'] != null)
            Text(
              _searchInformation['title']!,
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
          if (_searchInformation['subtitle'] != null)
            Text(_searchInformation['subtitle']!),
          if (_searchInformation['followers'] != null)
            Text(
              '${_searchInformation['followers']!} followers',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
        ],
      ),
      trailing: GestureDetector(
        onTap: _toggleFollowButton,
        child: Container(
          alignment: Alignment.center,
          width: 75,
          height: 30,
          decoration: BoxDecoration(
            color: _isFollowed ? Colors.blue : Colors.white,
            border: Border.all(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            'Follow',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: _isFollowed ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

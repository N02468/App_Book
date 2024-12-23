import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search Books',
            border: InputBorder.none,
            suffixIcon: IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {
                // Navigate back to the previous screen
                Navigator.pop(context);
              },
            ),
          ),
          textInputAction: TextInputAction.search,
          onSubmitted: (value) {
            // Implement your search functionality here
          },
        ),
      ),
      body: const Center(
        child: Text('Search Results'),
      ),
    );
  }
}

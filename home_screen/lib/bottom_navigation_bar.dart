import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      height: 49,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0), // Horizontal padding between icons
                  child: IconButton(
                    icon: const Icon(Icons.home),
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: IconButton(
                    icon: const Icon(Icons.book),
                    onPressed: () {
                      Navigator.pushNamed(context, '/second');
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: IconButton(
                    icon: const Icon(Icons.attach_money),
                    onPressed: () {
                      Navigator.pushNamed(context, '/third');
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: IconButton(
                    icon: const Icon(Icons.star_border),
                    onPressed: () {
                      Navigator.pushNamed(context, '/fourth');
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: IconButton(
                    icon: const Icon(Icons.person),
                    onPressed: () {
                      Navigator.pushNamed(context, '/fifth');
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

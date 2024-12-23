import 'package:flutter/material.dart';
import 'package:home_screen/bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('App Book'),
        leading: IconButton(
          icon: const Icon(Icons.help_outline),
          onPressed: () {
            _showHelpSheet(context); // Show the help bottom sheet
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.pushNamed(context, '/search');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Discover Books',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.only(
              left: 9,
              bottom: 10,
            ),
            child: Text(
              'Explore new titles and authors',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),

          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const <Widget>[
                SizedBox(
                  width: 2,
                ),
                ImageWithPadding('assets/image.jpg'),
                SizedBox(width: 2),
                ImageWithPadding('assets/image2.jpg'),
                SizedBox(width: 2),
                ImageWithPadding('/image3.jpg'),
                SizedBox(width: 2),
                ImageWithPadding('/image4.jpg'),
                SizedBox(width: 2),
                ImageWithPadding('/image5.jpg'),
                SizedBox(width: 2),
              ],
            ),
          ),

          // Add more widgets as needed
          const SizedBox(height: 18),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: double.infinity,
                  height: 150,
                  padding: const EdgeInsets.all(
                    7,
                  ),
                  child: Center(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          '/banner.png',
                          width: 300,
                          height: 300,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16), // Adjust the height of the spacing
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Text(
                  'Discover Legends & \nlegacies', // Your new heading text

                  style: TextStyle(
                    fontSize: 16, // Adjust the font size as needed
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(left: 16, top: 40, right: 40, bottom: 40),
                child: Text('Imagine Black futures'),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 9,
              bottom: 10,
              top: 10,
            ),
            child: Text(
              'Read the next big thing', // Your new heading text
              style: TextStyle(
                fontSize: 16, // Adjust the font size as needed
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const <Widget>[
                SizedBox(
                  width: 2,
                ),
                ImageWithPadding('/ellyconway.jpg'),
                SizedBox(width: 2),
                ImageWithPadding('/Stephenking1.jpg'),
                SizedBox(width: 2),
                ImageWithPadding('/itendswithus.jpg'),
                SizedBox(width: 2),
                ImageWithPadding('/Stephenking.jpg'),
                SizedBox(width: 2),
                ImageWithPadding('/laterstephenking.jpg'),
                SizedBox(width: 2),
              ],
            ),
          ),
          Divider(
            height: 20,
            thickness: 2,
            color: Colors.grey[400],
            indent: 20,
            endIndent: 20,
          ),

          const Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'App Book',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                    height: 10), // Add spacing between the text and the divider
                Text(
                  'Play Pass',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 51, 51, 51),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 6,
                  ),
                  child: Text(
                    'Gift Cards',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 6,
                  ),
                  child: Text(
                    'Play points',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 6,
                  ),
                  child: Text(
                    'Redeem',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 6,
                  ),
                  child: Text(
                    'Refund Policy',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 9,
                  ),
                  child: Text(
                    'Kind & Family',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 9,
                  ),
                  child: Text(
                    'Parent Guide',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 9,
                  ),
                  child: Text(
                    'Family sharing',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 15,
                      ),
                      child: Text(
                        'Terms of service',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(width: 10), // Add spacing between the two texts
                    Padding(
                      padding: EdgeInsets.only(
                        top: 15,
                        left: 10,
                      ),
                      child: Text(
                        'Privacy',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 15,
                      ),
                      child: Text(
                        'About App Book',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(width: 10), // Add spacing between the two texts
                    Padding(
                      padding: EdgeInsets.only(
                        top: 15,
                        left: 18,
                      ),
                      child: Text(
                        'Developers',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10), // Add spacing between the two texts
                Padding(
                  padding: EdgeInsets.only(
                    top: 15,
                  ),
                  child: Text(
                    'App Book',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 7,
            ),
            child: Row(
              children: [
                const Text(
                  'Pakistan (English)',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 17,
                    left: 6,
                    bottom: 10,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        '/pakistaniflag.png',
                        width:
                            29, // Adjust the width of the flag image as needed
                        height:
                            29, // Adjust the height of the flag image as needed
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}

void _showHelpSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Help', // Add your help dialog content here
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text('Popular help resources'),
            // Example content

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Close the sheet
              },
              child: const Text('Close'),
            ),
          ],
        ),
      );
    },
  );
}

class ImageWithPadding extends StatelessWidget {
  final String imagePath;

  const ImageWithPadding(this.imagePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(10.0), // Adjust the radius as needed
        ),
        child: ClipRRect(
          borderRadius:
              BorderRadius.circular(10.0), // Same radius as the container
          child: Image(
            image: AssetImage(imagePath),
          ),
        ),
      ),
    );
  }
}

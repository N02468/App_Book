import 'package:flutter/material.dart';
import 'package:home_screen/bottom_navigation_bar.dart';

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

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('App Book'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Manga & Comics under \$5',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            // Add more widgets as needed
            SizedBox(
              height: 200, // Adjust the height of the book images container
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  SizedBox(
                    width: 2,
                  ),
                  ImageWithPadding('assets/spiderman.jpg'),
                  SizedBox(width: 2),
                  ImageWithPadding('assets/spidermanmilesmorales.jpg'),
                  SizedBox(width: 2),
                  ImageWithPadding('assets/Persyjackson.jpg'),
                  SizedBox(width: 2),
                  ImageWithPadding('assets/onedarkwindow.jpg'),
                  SizedBox(width: 2),
                  ImageWithPadding('assets/avatar.jpg'),
                  SizedBox(width: 2),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Start a new series',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 200, // Adjust the height of the other images container
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildBookImage('/heroismhardship.jpg', '5.88'),
                  _buildBookImage('/Abookshoptodiefor.jpg', '6.77'),
                  _buildBookImage('/CloakofWolves.jpg', '8.99'),
                  // Add more images here
                ],
              ),
            ),

            // Add more widgets as needed
            SizedBox(
              height: 200, // Adjust the height of the book images container
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  SizedBox(
                    width: 2,
                  ),
                  ImageWithPadding('/octavia.jpg'),
                  SizedBox(width: 2),
                  ImageWithPadding(
                      'assets/TheFallOfTheHouseOfUsherShortStory.jpg'),
                  SizedBox(width: 2),
                  ImageWithPadding('assets/Persyjackson.jpg'),
                  SizedBox(width: 2),
                  ImageWithPadding('assets/onedarkwindow.jpg'),
                  SizedBox(width: 2),
                  ImageWithPadding('/thebloodtrials.jpg'),
                  SizedBox(width: 2),
                ],
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    bottom: 10,
                    top: 10,
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(
                      top: 6,
                      left: 3,
                    ),
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(20), // Rounded corners
                      child: Image.asset(
                        '/paid.jpg', // Replace 'assets/banner_image.jpg' with your image path
                        fit: BoxFit.cover,
                      ),
                    ), // Adjust horizontal padding as needed
                  ),
                ),
                const Positioned(
                  top: 20, // Adjust position as needed
                  left: 20, // Adjust position as needed
                  child: Text(
                    'Paid book',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Text color
                    ),
                  ),
                ),
                const Positioned(
                  top: 50, // Adjust position as needed
                  left: 20, // Adjust position as needed
                  child: Text(
                    'Buy Our Premium Book \nGet 65% Off', // Your subheading text
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black, // Text color
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              height: 20,
              thickness: 2,
              color: Colors.grey,
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
                      height:
                          10), // Add spacing between the text and the divider
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
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }

  Widget _buildBookImage(
    String imagePath,
    String price,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 100, // Adjust the width of the book image as needed
            height: 150, // Adjust the height of the book image as needed
          ),
          const SizedBox(
              height: 5), // Add spacing between the image and the price

          Text(
            'Price: \$$price',
            style: const TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 34, 34, 33),
            ),
          ),
          const SizedBox(
              height: 5), // Add spacing between the price and the rating
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }
}

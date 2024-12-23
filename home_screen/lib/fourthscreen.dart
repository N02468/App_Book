import 'package:flutter/material.dart';
import 'package:home_screen/bottom_navigation_bar.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({Key? key}) : super(key: key);
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
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'All Books',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 200.0, // Adjust height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6, // Assuming you have 6 book images
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/Read');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 150.0, // Adjust width as needed

                        child: Center(
                          child: Image.asset(
                            '/content.jpg', // Replace 'assets/book_$index.jpg' with your image path
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20.0), // Spacer between sections
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Favorite Books',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 200.0, // Adjust height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3, // Assuming you have 3 favorite book images
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/Read');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150.0, // Adjust width as needed
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(10.0), // Rounded corners
                          color: Colors.grey[300], // Placeholder color
                        ),
                        child: Center(
                          child: Image.asset(
                            '/Stephenking.jpg', // Replace 'assets/favorite_book_$index.jpg' with your favorite book image path
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  );
                },
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
}

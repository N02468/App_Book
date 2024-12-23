import 'package:flutter/material.dart';

class ReadScreen extends StatelessWidget {
  const ReadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Read Book'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200.0, // Adjust the height of the image as needed
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      '/content.jpg'), // Replace '/content.jpg' with your image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                '"The Overlook was a construct, as much so as the sets in Hollywood. It had been built as a playground for Chicago’s rich in 1907, part of a chain of luxury hotels stretching from coast to coast. But prosperity had bypassed the Overlook. The big money was now on the Strip in Las Vegas, and in the Atlantic City casinos. The Overlook had become a summer hotel, and then it closed up for the winter, as it was closing now, and lay under a deep blanket of snow from October to April."',
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "The Overlook's winter caretaker was Jack Torrance, a writer who'd lost his chance at greatness through a series of alcohol-fueled misadventures. He was only five feet ten, but his arms were long, and his hands were enormous. It was this latter attribute that made him a second-rank writer instead of a first-rank one; when he held a pencil or a pen, it looked like a toy. But he had found a haven in the Overlook's cellar, where he could escape the curse of his own hands and where the only thing that mattered was the precision of his skill with a croquet mallet.",
              ),
            ),
            const SizedBox(
                height: 16.0), // Add space between paragraphs and PDF view

            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0), // Add padding from both sides
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BookPagesScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.amber, // Change text color
                ),
                child: const Text('See Book Pages'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BookPagesScreen extends StatelessWidget {
  const BookPagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List of book page images
    List<String> pageImages = [
      '/page1.png',
      '/page2.png',
      '/page3.png',
      '/page4.png',
      '/page5.png',
      '/page6.png',
      '/page7.png',
      // Add more page images as needed
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Book Pages'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: pageImages
            .map((pageImage) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    pageImage,
                    width: 500, // Adjust image width as needed
                    height: 500, // Adjust image height as needed
                    fit: BoxFit.cover,
                  ),
                ))
            .toList(),
      ),
    );
  }
}

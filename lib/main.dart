import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Feature Image',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                const Text(
                  "Burger with Fries",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Italian, American, Fast Food, Burger, Fries, Salad",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          "5.0",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 39, 110, 41),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "15 Min",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      ". Paid Category",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Feature Partners',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('See All'),
                    ),
                  ],
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 200.0,
                    viewportFraction: 0.5, // Two images per view
                    enlargeCenterPage: true,
                  ),
                  items: [
                    'https://images.pexels.com/photos/70498/pexels-photo-70498.jpeg',
                    'https://images.pexels.com/photos/70499/pexels-photo-70499.jpeg',
                    'https://images.pexels.com/photos/70500/pexels-photo-70500.jpeg',
                    'https://images.pexels.com/photos/70501/pexels-photo-70501.jpeg'
                  ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(i),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                SizedBox(height: 20),
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/5865071/pexels-photo-5865071.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  "the view restaurant",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Herat, ShahrNow",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "4.4",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'stars from global rating',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

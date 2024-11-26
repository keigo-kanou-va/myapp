import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
            child: Column(
          children: [
            ImageSection(image: 'images/lake.jpg'),
            TitleSection(
              name: 'Oeschinen Lake Campground',
              location: 'Kandersteg, Switzerland',
            ),
            TitleSection(name: 'テストです', location: 'テスト2'),
            TitleSection(name: 'テストです', location: 'テスト2'),
          ],
        )),
      ),
    );
  }
}

// === ImageSection ここから===
class ImageSection extends StatelessWidget {
  const ImageSection({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 60,
      height: 24,
      fit: BoxFit.cover,
    );
  }
}

// === ImageSection ここまで ===

// === TitleSection ここから===

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          // Row要素1
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // column要素1
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // column要素2
              Text(
                location,
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              )
            ],
          )),

          // Row要素2
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),

          // Row要素3
          const Text('41'),
        ],
      ),
    );
  }
}

// === TitleSection ここまで===

import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Map<String, String> itemData;

  const DetailPage({Key? key, required this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(itemData['title']!),
      ),
      body:Container(
  alignment: Alignment.topLeft,
  padding: EdgeInsets.all(16.0),
  child: Column(
    children: [
      Text(
        itemData['subtitle']!,
        style: TextStyle(fontSize: 25),
      ), // Text
      Text(
        itemData['terjemahan']!,
        style: TextStyle(fontSize: 16.0),
      ) // Text
    ],
  ),
)

    );
  }
}
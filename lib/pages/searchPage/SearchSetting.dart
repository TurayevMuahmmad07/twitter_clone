import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchSetting extends StatefulWidget {
  const SearchSetting({super.key});

  @override
  State<SearchSetting> createState() => _SearchSettingState();
}

class _SearchSettingState extends State<SearchSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 100,
        title: Text(
          'Explore Settings',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Location',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Sports - Trending',
              style: TextStyle(fontSize: 5),
            ),
          ],
        ),
      ),
    );
  }
}

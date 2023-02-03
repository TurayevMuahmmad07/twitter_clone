import 'package:clone/pages/searchPage/SearchSetting.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        centerTitle: true,
        title: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(5),
            filled: true,
            fillColor: Colors.grey,
            labelText: "Search Twitter",
            hintText: "Search...",
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(50)),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchSetting(),
                    ));
              },
              icon: Icon(Icons.settings),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'Trends for you',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Sports - Trending',
              style: TextStyle(fontSize: 10),
            ),
            Text(
              'Mbappe',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            // ignore: prefer_const_constructors
            Text(
              '41.5K Tweets',
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 10),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Trending in Movies',
              style: TextStyle(fontSize: 10),
            ),
            Text(
              'On Wednesdays',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Text(
              '2,070 Tweets',
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 10),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Sports - Trending',
              style: TextStyle(fontSize: 10),
            ),
            Text(
              'La Liga',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Text(
              '33.5K Tweets',
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 10),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Sports - Trending',
              style: TextStyle(fontSize: 10),
            ),
            Text(
              'Gavi',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Text(
              '38K Tweets',
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 10),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Sports - Trending',
              style: TextStyle(fontSize: 10),
            ),
            Text(
              'Tebas',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Text(
              '21.4 Tweets',
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 10),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Show more',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color.fromARGB(255, 18, 97, 161)),
            ),
          ],
        ),
      ),
    );
  }
}

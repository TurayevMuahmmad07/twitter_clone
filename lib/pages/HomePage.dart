import 'package:clone/pages/searchPage/SearchPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../items/postItem.dart';
import '../states.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Container(
          padding: const EdgeInsets.all(10),
          height: 20,
          width: 20,
          child: const CircleAvatar(
            radius: 5,
            backgroundImage: AssetImage("assets/icons/imagess.jpg"),
          ),
        ),
        title: Image.asset(
          "assets/icons/tick.svg",
          height: 50,
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/Setting');
            },
            child: SvgPicture.asset('assets/icons/action.svg'),
          ),
          SvgPicture.asset("assets/icons/action.svg"),
          const SizedBox(width: 21)
        ],
      ),
      body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            return postTweet(context, posts[index]);
          }),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.transparent,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/home.svg"), label: ''),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchPage(),
                      ),
                    );
                  },
                  icon: Icon(Icons.search)),
              label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.mic), label: ""),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/bell.svg"), label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/mail.svg"), label: ''),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: SvgPicture.asset("assets/icons/add.svg"),
      ),
    );
  }
}

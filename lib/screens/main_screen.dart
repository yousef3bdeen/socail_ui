import 'package:flutter/material.dart';
import 'package:socail_ui_kit/post_data.dart';
import 'package:socail_ui_kit/widgets/post_ui.dart';
import 'package:socail_ui_kit/widgets/story_ui.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Logo',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: ((context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon:
                    const Icon(Icons.chat_bubble_outline, color: Colors.black),
              )),
        ),
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/me.jpeg'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Recommendations',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        usersPost.length,
                        (index) => Padding(
                          padding: const EdgeInsets.all(10),
                          child: StoryUi(
                            project: usersPost[index],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Column(
                children: List.generate(
                  usersPost.length,
                  (index) => PostUi(projectPost: usersPost[index]),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.crib_outlined),
            label: 'STORIES',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'NOTIFICATIONS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'SEARCH',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const CircleAvatar(
          child: Icon(Icons.camera_alt_outlined),
        ),
      ),
    );
  }
}

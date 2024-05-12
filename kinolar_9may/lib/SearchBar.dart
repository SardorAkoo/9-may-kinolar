import 'package:flutter/material.dart';
import 'package:kinolar_9may/menuBar.dart';
import 'package:kinolar_9may/Dowlands.dart';

class SearchFilmsBar extends StatefulWidget {
  const SearchFilmsBar({Key? key}) : super(key: key);

  @override
  State<SearchFilmsBar> createState() => _SearchFilmsBarState();
}

List<String> films = [
  'kino1',
  'kino2',
  'kino3',
  'kino4',
  'kino5',
  'kino6',
  'kino7',
  'kino8',
  'kino9',
  'kino10',
  'kino11',
  'kino12'
];

class _SearchFilmsBarState extends State<SearchFilmsBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                // Home sahifasiga o'tish
              },
              icon: Icon(Icons.home),
              color: Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                // Explore sahifasiga o'tish
              },
              icon: Icon(
                Icons.search,
                color: Colors.deepPurple,
              ),
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: Image.network(
                'https://cdn-icons-png.flaticon.com/128/13454/13454818.png',
                color: Colors.grey,
                width: 25,
              ),
            ),
            label: 'My List',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) {
                      return DowlandsFilmsList();
                    },
                  ),
                );
              },
              icon: Icon(
                Icons.cloud_download_outlined,
                color: Colors.grey,
              ),
            ),
            label: 'Download',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                // Profile sahifasiga o'tish
              },
              icon: Icon(
                Icons.perm_identity_outlined,
                color: Colors.grey,
              ),
            ),
            label: 'Profile',
          ),
        ],
        selectedLabelStyle: const TextStyle(
          color: Colors.black,
        ),
        unselectedLabelStyle: const TextStyle(
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(15),
                width: 380,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[600],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Text('Comedy',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                      ],
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyMenuBar()));
                      },
                      icon: Image.network(
                        'https://cdn-icons-png.flaticon.com/128/1828/1828665.png',
                        width: 30,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Results for \"comedy\"",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 118,
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/kino1.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Container(
                    width: 118,
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/kino2.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Container(
                    width: 118,
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/kino3.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 118,
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/kino4.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Container(
                    width: 118,
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/kino5.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Container(
                    width: 118,
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/kino6.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 118,
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/kino7.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Container(
                    width: 118,
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/kino8.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Container(
                    width: 118,
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/kino9.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 118,
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/kino10.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Container(
                    width: 118,
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/kino11.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Container(
                    width: 118,
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/kino12.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

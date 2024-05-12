import 'package:flutter/material.dart';
import 'package:kinolar_9may/Dowlands.dart';
import 'package:kinolar_9may/SearchBar.dart';

class MyMenuBar extends StatefulWidget {
  const MyMenuBar({Key? key}) : super(key: key);

  @override
  State<MyMenuBar> createState() => _MyMenuBarState();
}

class _MyMenuBarState extends State<MyMenuBar> {
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
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) {
                      return SearchFilmsBar();
                    },
                  ),
                );
              },
              icon: Icon(
                Icons.search,
                color: Colors.deepPurple,
              ),
            ),
            label: 'Search',
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
              onPressed: () {},
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
      body: Padding(
        padding: EdgeInsets.all(20),
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
                // crossAxisAlignment: CrossAxisAlignment.,
                children: [
                  const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      onChanged: (text) {
                        if (text.toLowerCase() == 'comedy') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const SearchFilmsBar()));
                        }
                      },
                      decoration: InputDecoration(
                        hintText: 'Search by title, genre, actor',
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Resent Seaches',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                Container(
                  width: 110,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color.fromARGB(255, 8, 13, 44),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      Text(
                        'Marvel',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 160,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(55),
                    color: const Color.fromARGB(255, 8, 13, 44),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10), // Bo'shlik qo'shish

                      Text(
                        'CopitanAmerika',
                        style: TextStyle(
                            color: Colors.white), // TextField matni rangi
                      ),
                    ],
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
                  width: 190,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color.fromARGB(255, 8, 13, 44),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      Text(
                        'Captaain Marvel',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(55),
                    color: const Color.fromARGB(255, 8, 13, 44),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10), // Bo'shlik qo'shish

                      Text(
                        'Thor',
                        style: TextStyle(
                            color: Colors.white), // TextField matni rangi
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Popular',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 120,
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/kino1.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 120,
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/kino2.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 120,
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/kino3.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 120,
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/kino4.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 120,
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/kino5.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 120,
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/kino6.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Popular',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 120,
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/kino1.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 120,
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/kino2.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 120,
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/kino3.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 120,
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/kino4.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 120,
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/kino5.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 120,
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/kino6.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

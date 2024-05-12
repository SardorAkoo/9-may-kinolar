import 'package:flutter/material.dart';
import 'package:kinolar_9may/SearchBar.dart';

class DowlandsFilmsList extends StatefulWidget {
  const DowlandsFilmsList({super.key});

  @override
  State<DowlandsFilmsList> createState() => _DowlandsFilmsListState();
}

class _DowlandsFilmsListState extends State<DowlandsFilmsList> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width - 30;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
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
                color: Colors.grey,
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
                  color: Colors.deepPurple,
                ),
              ),
              label: 'Download'),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 35,
            ),
            const Text(
              'Dowlands',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'List Movie',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'List Movie',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  width: screenWidth / 2,
                  height: 2,
                  decoration: BoxDecoration(color: Colors.grey),
                ),
                Container(
                  width: screenWidth / 2,
                  height: 4,
                  decoration: BoxDecoration(color: Colors.deepPurple),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: screenWidth,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 27, 2, 73),
              ),
              child: Row(
                children: [
                  Container(
                    width: 118,
                    height: 90,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/kino7.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Caoptain america: The First',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Average (2011)',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),

                    Row(
                      children: [
                        
                      ],
                    )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

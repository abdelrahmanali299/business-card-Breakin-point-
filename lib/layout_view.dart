import 'package:flutter/material.dart';
import 'package:test/home_widget.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  List<Widget> widgets = [
    HomeWidget(),
    Center(child: Text('Search')),
    Center(child: Text('Favourites')),
    Center(child: Text('Cart')),
    Center(child: Text('Profile')),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print('click');
                  if (currentIndex != 0) {
                    currentIndex = 0;
                    print('clickin');

                    setState(() {});
                  }
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  // expanded , flexible == > flexibale widgets
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.home,
                      color: currentIndex == 0 ? Colors.black : Colors.grey,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: currentIndex == 0 ? Colors.black : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  if (currentIndex != 1) {
                    currentIndex = 1;
                    setState(() {});
                  }
                },
                child: Column(
                  //20
                  mainAxisSize: MainAxisSize.min,

                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.search,
                      color: currentIndex == 1 ? Colors.black : Colors.grey,
                    ),
                    Text(
                      "Browse",
                      style: TextStyle(
                        color: currentIndex == 1 ? Colors.black : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  if (currentIndex != 2) {
                    currentIndex = 2;
                    setState(() {});
                  }
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,

                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: currentIndex == 2 ? Colors.black : Colors.grey,
                    ),
                    Text(
                      "Favourites",
                      style: TextStyle(
                        color: currentIndex == 2 ? Colors.black : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  if (currentIndex != 3) {
                    currentIndex = 3;
                    setState(() {});
                  }
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,

                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.shopping_cart,
                      color: currentIndex == 3 ? Colors.black : Colors.grey,
                    ),
                    Text(
                      "Cart",
                      style: TextStyle(
                        color: currentIndex == 3 ? Colors.black : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  if (currentIndex != 4) {
                    currentIndex = 4;
                    setState(() {});
                  }
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,

                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.person,
                      color: currentIndex == 4 ? Colors.black : Colors.grey,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(
                        color: currentIndex == 4 ? Colors.black : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: widgets[currentIndex],
    );
  }
}

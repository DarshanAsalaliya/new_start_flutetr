import 'package:flutter/material.dart';

import 'country/country_screen.dart';
import 'text/text_screen.dart';
import 'webview/web_view_screen.dart';

class HomePage extends StatefulWidget {
  HomePageScreens? selectedScreen;
  HomePage({super.key, this.selectedScreen});

  @override
  State<HomePage> createState() => _HomePageState();
}

enum HomePageScreens { countryScreen, textScreen, webViewScreen }

class _HomePageState extends State<HomePage> {
  HomePageScreens _selectedTab = HomePageScreens.countryScreen;

  Widget getScreen(HomePageScreens index) {
    switch (index) {
      case HomePageScreens.countryScreen:
        return CountryScreen();
      case HomePageScreens.textScreen:
        return TextScreen();
      case HomePageScreens.webViewScreen:
        return WebViewScreen();
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedTab = widget.selectedScreen ?? HomePageScreens.countryScreen;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: getScreen(_selectedTab),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab.index,
        onTap: (index) {
          setState(() {
            _selectedTab = HomePageScreens.values[index];
          });
        },
        items: [
          createBottomNavigationBarItem("Country", Icons.room),
          createBottomNavigationBarItem("Text", Icons.text_fields),
          createBottomNavigationBarItem("Webview", Icons.web),
        ],
      ),
    );
  }

  BottomNavigationBarItem createBottomNavigationBarItem(
      String title, IconData icon) {
    return BottomNavigationBarItem(icon: Icon(icon), label: title);
  }
}

import 'package:flutter/material.dart';
import 'package:oneres_newuiversion/utils/colorutils.dart';
import 'widget/restaurantwidget.dart';

class MyAppRestaurant extends StatefulWidget {
  const MyAppRestaurant({Key? key}) : super(key: key);

  @override
  State<MyAppRestaurant> createState() => _MyAppRestaurantState();
}

class _MyAppRestaurantState extends State<MyAppRestaurant> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  String pageActive = 'Home';

  _pageView() {
    switch (pageActive) {
      case 'Home':
        return HomePageRestaurant();
      case 'Menu':
        return Container();
      case 'History':
        return Container();
      case 'Promos':
        return Container();
      case 'Settings':
        return Container();

      default:
        return HomePageRestaurant();
    }
  }

  _setPage(String page) {
    setState(() {
      pageActive = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text(
          'Restaurant',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.keyboard_return_outlined),
          )
        ],
        leading: InkWell(
          onTap: () {
            if (scaffoldKey.currentState?.isDrawerOpen ?? false) {
              scaffoldKey.currentState?.openEndDrawer();
            } else {
              scaffoldKey.currentState?.openDrawer();
            }
          },
          child: _logo(),
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xff17181f),
        width: 70,
        child: _sideMenu(),
      ),
      backgroundColor: ColorTheme.mainBackground,
      body: Row(
        children: [
          // Container(
          //   width: 70,
          //   padding: const EdgeInsets.only(top: 24, right: 12, left: 12),
          //   height: MediaQuery.of(context).size.height,
          //   child: _sideMenu(),
          // ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 12, right: 12, left: 12),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
                color: Color(0xff17181f),
              ),
              child: _pageView(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _sideMenu() {
    return ListView(
      children: [
        _itemMenu(
          menu: 'Home',
          icon: Icons.rocket_sharp,
        ),
        _itemMenu(
          menu: 'History',
          icon: Icons.history_toggle_off_rounded,
        ),
        _itemMenu(
          menu: 'Promos',
          icon: Icons.discount_outlined,
        ),
        _itemMenu(
          menu: 'Booking',
          icon: Icons.book_online,
        ),
        _itemMenu(
          menu: 'Items',
          icon: Icons.insert_emoticon,
        ),
        _itemMenu(
          menu: 'Menu',
          icon: Icons.menu,
        ),
        _itemMenu(
          menu: 'Settings',
          icon: Icons.sports_soccer_outlined,
        ),
      ],
    );
  }

  Widget _logo() {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Icon(
        Icons.fastfood,
        color: Colors.white,
        size: 14,
      ),
    );
  }

  Widget _itemMenu({required String menu, required IconData icon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 9),
      child: GestureDetector(
        onTap: () => _setPage(menu),
        child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: AnimatedContainer(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: pageActive == menu
                    ? Colors.deepOrangeAccent
                    : Colors.transparent,
              ),
              duration: const Duration(milliseconds: 300),
              curve: Curves.slowMiddle,
              child: Column(
                children: [
                  Icon(
                    icon,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    menu,
                    style: const TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

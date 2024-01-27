import 'package:flutter/material.dart';
import 'package:oneres_newuiversion/utils/colorutils.dart';
import 'package:oneres_newuiversion/view/drawer/widget/menudropwidget.dart';
import 'package:oneres_newuiversion/view/listable_menu/listable_menu.dart';
import 'package:oneres_newuiversion/view/restaurant/widget/restaurantwidget.dart';
// import '../restaurant/widget/restaurantwidget.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  String pageActive = 'Home';
  _pageView() {
    switch (pageActive) {
      case 'Home':
        return const HomePageRestaurant();
      case 'Menu':
        return Container();
      case 'History':
        return Container();
      case 'Promos':
        return Container();
      case 'Settings':
        return Container();

      default:
        return Container();
    }
  }

  // _setPage(String page) {
  //   setState(() {
  //     pageActive = page;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    // double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      key: scaffoldKey,
      onDrawerChanged: (isOpened) {
        if (!isOpened) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      drawer: widthScreen < 800
          ? Drawer(
              backgroundColor: const Color(0xff17181f),
              width: 70,
              child: Padding(
                  padding: const EdgeInsets.only(top: 40), child: _sideMenu()),
            )
          : Container(),
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
        leading: InkWell(
          onTap: () {
            if (widthScreen > 800) {
              Navigator.pop(context);
            } else {
              if (scaffoldKey.currentState?.isDrawerOpen ?? false) {
                scaffoldKey.currentState?.openEndDrawer();
              } else {
                scaffoldKey.currentState?.openDrawer();
              }
            }
          },
          child: _logo(),
        ),
      ),
      // drawer: Drawer(
      //   backgroundColor: const Color(0xff17181f),
      //   width: 70,
      //   child: _sideMenu(),
      // ),
      backgroundColor: ColorTheme.mainBackground,
      body: GestureDetector(
        onTap: () {
          print(22);
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Row(
          children: [
            widthScreen > 800
                ? Container(
                    width: 70,
                    padding:
                        const EdgeInsets.only(top: 24, right: 12, left: 12),
                    height: MediaQuery.of(context).size.height,
                    child: _sideMenu(),
                  )
                : Container(),
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
    // SampleItem? selectedMenu;
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 9),
        child: MenuDropdownWidget(
          dropdownBackgroundColor: Color(0xff252836),
          dropdownWidth: 250,
          text: const [
            Text('321321312', style: TextStyle(color: Colors.red)),
            Text('321321312', style: TextStyle(color: Colors.red)),
            Text('321321312', style: TextStyle(color: Colors.red))
          ],
          functions: [
            () async {
              showDialog(
                  context: context,
                  builder: (context) => const ListableMenuPage());
            },
            () async {
              showDialog(
                  context: context,
                  builder: (context) => const ListableMenuPage());
            },
            () async {
              showDialog(
                  context: context,
                  builder: (context) => const ListableMenuPage());
            }
          ],
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.transparent,
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
        ));
  }
}

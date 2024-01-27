import 'package:flutter/material.dart';
import 'package:oneres_newuiversion/gen/fonts.gen.dart';
import 'package:oneres_newuiversion/utils/colorutils.dart';
import 'package:oneres_newuiversion/view/checkbox/checkbox.dart';
import 'package:oneres_newuiversion/view/drawer/drawerpage.dart';
import 'package:oneres_newuiversion/view/listable_menu/listable_menu.dart';
import 'package:oneres_newuiversion/view/popmenu/popmenu.dart';
import 'package:oneres_newuiversion/view/restaurant/restaurantpage.dart';
import 'package:oneres_newuiversion/view/search/search.dart';
// import 'package:oneres_newuiversion/view/search/widget/search_widget.dart';
// import 'package:oneres_newuiversion/view/slider_button/slider_button.dart';
import 'package:oneres_newuiversion/view/swtich/swtich.dart';
import 'package:oneres_newuiversion/view/table/table.dart';
import 'package:oneres_newuiversion/view/tablenewm/tablenew.dart';

import 'button/button.dart';
import 'buttonloading/buttonloading.dart';
import 'contact/contact.dart';
// import 'drawer/widget/widget.dart';
import 'icon/icon.dart';
import 'item/item.dart';
import 'listable_are_table/listable2.dart';
import 'listtable/listtable.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.mainBackground,
      body: GridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 8,
        crossAxisSpacing: 5,
        childAspectRatio: 8,
        children: [
          Container(
              color: ColorTheme.colorButton,
              child: Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NeutronMenuItem()),
                    );
                  },
                  child: const Text(
                    'Item',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: FontFamily.timesNewRoman),
                  ),
                ),
              )),
          Container(
              width: 80,
              height: 50,
              color: ColorTheme.colorButton,
              child: Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyTable()),
                    );
                  },
                  child: const Text(
                    'Table',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: FontFamily.timesNewRoman),
                  ),
                ),
              )),
          Container(
              width: 80,
              height: 50,
              color: ColorTheme.colorButton,
              child: Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const IconPage()),
                    );
                  },
                  child: const Text(
                    'Icon',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: FontFamily.timesNewRoman),
                  ),
                ),
              )),
          Container(
              width: 80,
              height: 50,
              color: ColorTheme.colorButton,
              child: Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ButtonPage()),
                    );
                  },
                  child: const Text(
                    'Button',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: FontFamily.timesNewRoman),
                  ),
                ),
              )),
          Container(
              width: 80,
              height: 50,
              color: ColorTheme.colorButton,
              child: Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContactPage()),
                    );
                  },
                  child: const Text(
                    'Contact',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: FontFamily.timesNewRoman),
                  ),
                ),
              )),
          Container(
              width: 80,
              height: 50,
              color: ColorTheme.colorButton,
              child: Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ExpandableSearchBar(
                                onTap: () {},
                                hintText: 'Tìm kiếm',
                              )),
                    );
                  },
                  child: const Text(
                    'Search',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: FontFamily.timesNewRoman),
                  ),
                ),
              )),
          Container(
              width: 80,
              height: 50,
              color: ColorTheme.colorButton,
              child: Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ButtonLoadingPage()),
                    );
                  },
                  child: const Text(
                    'Button Loading',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: FontFamily.timesNewRoman),
                  ),
                ),
              )),
          Container(
              width: 80,
              height: 50,
              color: ColorTheme.colorButton,
              child: Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SwitchPage()),
                    );
                  },
                  child: const Text(
                    'Switch',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: FontFamily.timesNewRoman),
                  ),
                ),
              )),
          Container(
              width: 80,
              height: 50,
              color: ColorTheme.colorButton,
              child: Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DataTableExample()),
                    );
                  },
                  child: const Text(
                    'List Table',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: FontFamily.timesNewRoman),
                  ),
                ),
              )),
          Container(
              width: 80,
              height: 50,
              color: ColorTheme.colorButton,
              child: Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Listable2Page()),
                    );
                  },
                  child: const Text(
                    'List Table Table - Area',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: FontFamily.timesNewRoman),
                  ),
                ),
              )),
          Container(
              width: 80,
              height: 50,
              color: ColorTheme.colorButton,
              child: Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ListableMenuPage()),
                    );
                  },
                  child: const Text(
                    'List Table Menu',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: FontFamily.timesNewRoman),
                  ),
                ),
              )),
          Container(
              width: 80,
              height: 50,
              color: ColorTheme.colorButton,
              child: Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CheckBoxPage()),
                    );
                  },
                  child: const Text(
                    'Check Box',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: FontFamily.timesNewRoman),
                  ),
                ),
              )),
          // Container(
          //     width: 80,
          //     height: 50,
          //     color: ColorTheme.colorButton,
          //     child: Align(
          //       alignment: Alignment.center,
          //       child: TextButton(
          //         onPressed: () {
          //           Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //                 builder: (context) => const SliderButtonPage()),
          //           );
          //         },
          //         child: const Text(
          //           'Slider Button',
          //           style: TextStyle(
          //               color: Colors.black,
          //               fontFamily: FontFamily.timesNewRoman),
          //         ),
          //       ),
          //     )),
          Container(
              width: 80,
              height: 50,
              color: ColorTheme.colorButton,
              child: Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyAppRestaurant()),
                    );
                  },
                  child: const Text(
                    'Restaurant',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: FontFamily.timesNewRoman),
                  ),
                ),
              )),
          Container(
              width: 80,
              height: 50,
              color: ColorTheme.colorButton,
              child: Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DrawerPage()),
                    );
                  },
                  child: const Text(
                    'Drawer',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: FontFamily.timesNewRoman),
                  ),
                ),
              )),
          Container(
              width: 80,
              height: 50,
              color: ColorTheme.colorButton,
              child: Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PopMenuPage()),
                    );
                  },
                  child: const Text(
                    'Menu Drop',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: FontFamily.timesNewRoman),
                  ),
                ),
              )),
          // Container(
          //     width: 80,
          //     height: 50,
          //     color: ColorTheme.colorButton,
          //     child: Align(
          //       alignment: Alignment.center,
          //       child: TextButton(
          //         onPressed: () {
          //           Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //                 builder: (context) => const SearchWidget()),
          //           );
          //         },
          //         child: const Text(
          //           'search2',
          //           style: TextStyle(
          //               color: Colors.black,
          //               fontFamily: FontFamily.timesNewRoman),
          //         ),
          //       ),
          //     )),
          // Container(
          //     width: 80,
          //     height: 50,
          //     color: ColorTheme.colorButton,
          //     child: Align(
          //       alignment: Alignment.center,
          //       child: TextButton(
          //         onPressed: () {
          //           Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //                 builder: (context) => const PopupMenuApp()),
          //           );
          //         },
          //         child: const Text(
          //           'Menu Ragion',
          //           style: TextStyle(
          //               color: Colors.black,
          //               fontFamily: FontFamily.timesNewRoman),
          //         ),
          //       ),
          //     )),
          Container(
              width: 80,
              height: 50,
              color: ColorTheme.colorButton,
              child: Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TableNewPage()),
                    );
                  },
                  child: const Text(
                    'Lista Table New',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: FontFamily.timesNewRoman),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

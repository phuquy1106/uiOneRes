import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePageRestaurant extends StatefulWidget {
  const HomePageRestaurant({Key? key}) : super(key: key);

  @override
  State<HomePageRestaurant> createState() => _HomePageHomePageRestaurant();
}

class _HomePageHomePageRestaurant extends State<HomePageRestaurant> {
  final Controller controller = Controller();
  @override
  Widget build(BuildContext context) {
    int i = MediaQuery.of(context).size.width < 700
        ? 2
        : MediaQuery.of(context).size.width < 800
            ? 3
            : 4;

    return ChangeNotifierProvider<Controller>.value(
        value: controller,
        child: Consumer<Controller>(builder: (_, controller, __) {
          return Scaffold(
              backgroundColor: const Color(0xff17181f),
              bottomNavigationBar: MediaQuery.of(context).size.width < 800
                  ? bottom(controller, context)
                  : null,
              body: MediaQuery.of(context).size.width < 800
                  ? [
                      Column(
                        children: [
                          _topMenu(
                            title: 'Restourant',
                            subTitle: '',
                            action: _search(),
                          ),
                          Container(
                            height: 100,
                            padding: const EdgeInsets.symmetric(vertical: 24),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                _itemTab(
                                  icon: 'icons/icon-burger.png',
                                  title: 'Burger',
                                  isActive: true,
                                ),
                                _itemTab(
                                  icon: 'icons/icon-noodles.png',
                                  title: 'Noodles',
                                  isActive: false,
                                ),
                                _itemTab(
                                  icon: 'icons/icon-drinks.png',
                                  title: 'Drinks',
                                  isActive: false,
                                ),
                                _itemTab(
                                  icon: 'icons/icon-desserts.png',
                                  title: 'Desserts',
                                  isActive: false,
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: GridView.count(
                              crossAxisCount: i,
                              childAspectRatio: (1 / 1.2),
                              children: [
                                _item(
                                  image: 'items/1.png',
                                  title: 'Original Burger',
                                  price: '\$5.99',
                                  item: '11 item',
                                ),
                                _item(
                                  image: 'items/2.png',
                                  title: 'Double Burger',
                                  price: '\$10.99',
                                  item: '10 item',
                                ),
                                _item(
                                  image: 'items/3.png',
                                  title: 'Cheese Burger',
                                  price: '\$6.99',
                                  item: '7 item',
                                ),
                                _item(
                                  image: 'items/4.png',
                                  title: 'Double Cheese Burger',
                                  price: '\$12.99',
                                  item: '20 item',
                                ),
                                _item(
                                  image: 'items/5.png',
                                  title: 'Spicy Burger',
                                  price: '\$7.39',
                                  item: '12 item',
                                ),
                                _item(
                                  image: 'items/6.png',
                                  title: 'Special Black Burger',
                                  price: '\$7.39',
                                  item: '39 item',
                                ),
                                _item(
                                  image: 'items/7.png',
                                  title: 'Special Cheese Burger',
                                  price: '\$8.00',
                                  item: '2 item',
                                ),
                                _item(
                                  image: 'items/8.png',
                                  title: 'Jumbo Cheese Burger',
                                  price: '\$15.99',
                                  item: '2 item',
                                ),
                                _item(
                                  image: 'items/9.png',
                                  title: 'Spicy Burger',
                                  price: '\$7.39',
                                  item: '12 item',
                                ),
                                _item(
                                  image: 'items/10.png',
                                  title: 'Special Black Burger',
                                  price: '\$7.39',
                                  item: '39 item',
                                ),
                                _item(
                                  image: 'items/11.png',
                                  title: 'Special Cheese Burger',
                                  price: '\$8.00',
                                  item: '2 item',
                                ),
                                _item(
                                  image: 'items/12.png',
                                  title: 'Jumbo Cheese Burger',
                                  price: '\$15.99',
                                  item: '2 item',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          _topMenu(
                            title: 'Order',
                            subTitle: 'Table 8',
                            action: Container(),
                          ),
                          const SizedBox(height: 20),
                          Expanded(
                            child: ListView(
                              children: [
                                _itemOrder(
                                  image: 'items/1.png',
                                  title: 'Orginal Burger',
                                  qty: '2',
                                  price: '\$5.99',
                                ),
                                _itemOrder(
                                  image: 'items/2.png',
                                  title: 'Double Burger',
                                  qty: '3',
                                  price: '\$10.99',
                                ),
                                _itemOrder(
                                  image: 'items/6.png',
                                  title: 'Special Black Burger',
                                  qty: '2',
                                  price: '\$8.00',
                                ),
                                _itemOrder(
                                  image: 'items/4.png',
                                  title: 'Special Cheese Burger',
                                  qty: '2',
                                  price: '\$12.99',
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: const Color(0xff1f2029),
                              ),
                              child: Column(
                                children: [
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Sub Total',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        '\$40.32',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Tax',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        '\$4.32',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 20),
                                    height: 2,
                                    width: double.infinity,
                                    color: Colors.white,
                                  ),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Total',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        '\$44.64',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 30),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      onPrimary: Colors.white,
                                      primary: Colors.deepOrange,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.print, size: 16),
                                        SizedBox(width: 6),
                                        Text('Print Bills')
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ][controller.index]
                  : Row(
                      children: [
                        Expanded(
                          flex: 14,
                          child: Column(
                            children: [
                              _topMenu(
                                title: 'Restourant',
                                subTitle: '',
                                action: _search(),
                              ),
                              Container(
                                height: 100,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 24),
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    _itemTab(
                                      icon: 'icons/icon-burger.png',
                                      title: 'Burger',
                                      isActive: true,
                                    ),
                                    _itemTab(
                                      icon: 'icons/icon-noodles.png',
                                      title: 'Noodles',
                                      isActive: false,
                                    ),
                                    _itemTab(
                                      icon: 'icons/icon-drinks.png',
                                      title: 'Drinks',
                                      isActive: false,
                                    ),
                                    _itemTab(
                                      icon: 'assets/img/drink.jpg',
                                      title: 'Desserts',
                                      isActive: false,
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: GridView.count(
                                  crossAxisCount: i,
                                  childAspectRatio: (1 / 1.2),
                                  children: [
                                    _item(
                                      image: 'img/drink.jpg',
                                      title: 'Original Burger',
                                      price: '\$5.99',
                                      item: '11 item',
                                    ),
                                    _item(
                                      image: 'items/2.png',
                                      title: 'Double Burger',
                                      price: '\$10.99',
                                      item: '10 item',
                                    ),
                                    _item(
                                      image: 'items/3.png',
                                      title: 'Cheese Burger',
                                      price: '\$6.99',
                                      item: '7 item',
                                    ),
                                    _item(
                                      image: 'items/4.png',
                                      title: 'Double Cheese Burger',
                                      price: '\$12.99',
                                      item: '20 item',
                                    ),
                                    _item(
                                      image: 'items/5.png',
                                      title: 'Spicy Burger',
                                      price: '\$7.39',
                                      item: '12 item',
                                    ),
                                    _item(
                                      image: 'items/6.png',
                                      title: 'Special Black Burger',
                                      price: '\$7.39',
                                      item: '39 item',
                                    ),
                                    _item(
                                      image: 'items/7.png',
                                      title: 'Special Cheese Burger',
                                      price: '\$8.00',
                                      item: '2 item',
                                    ),
                                    _item(
                                      image: 'items/8.png',
                                      title: 'Jumbo Cheese Burger',
                                      price: '\$15.99',
                                      item: '2 item',
                                    ),
                                    _item(
                                      image: 'items/9.png',
                                      title: 'Spicy Burger',
                                      price: '\$7.39',
                                      item: '12 item',
                                    ),
                                    _item(
                                      image: 'items/10.png',
                                      title: 'Special Black Burger',
                                      price: '\$7.39',
                                      item: '39 item',
                                    ),
                                    _item(
                                      image: 'items/11.png',
                                      title: 'Special Cheese Burger',
                                      price: '\$8.00',
                                      item: '2 item',
                                    ),
                                    _item(
                                      image: 'items/12.png',
                                      title: 'Jumbo Cheese Burger',
                                      price: '\$15.99',
                                      item: '2 item',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: [
                              _topMenu(
                                title: 'Order',
                                subTitle: 'Table 8',
                                action: Container(),
                              ),
                              const SizedBox(height: 20),
                              Expanded(
                                child: ListView(
                                  children: [
                                    _itemOrder(
                                      image: 'items/1.png',
                                      title: 'Orginal Burger',
                                      qty: '2',
                                      price: '\$5.99',
                                    ),
                                    _itemOrder(
                                      image: 'items/2.png',
                                      title: 'Double Burger',
                                      qty: '3',
                                      price: '\$10.99',
                                    ),
                                    _itemOrder(
                                      image: 'items/6.png',
                                      title: 'Special Black Burger',
                                      qty: '2',
                                      price: '\$8.00',
                                    ),
                                    _itemOrder(
                                      image: 'items/4.png',
                                      title: 'Special Cheese Burger',
                                      qty: '2',
                                      price: '\$12.99',
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.all(20),
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: const Color(0xff1f2029),
                                  ),
                                  child: Column(
                                    children: [
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Sub Total',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            '\$40.32',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Tax',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            '\$4.32',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 20),
                                        height: 2,
                                        width: double.infinity,
                                        color: Colors.white,
                                      ),
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Total',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            '\$44.64',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 30),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          onPrimary: Colors.white,
                                          primary: Colors.deepOrange,
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.print, size: 16),
                                            SizedBox(width: 6),
                                            Text('Print Bills')
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ));
        }));
  }

  Widget _itemOrder({
    required String image,
    required String title,
    required String qty,
    required String price,
  }) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: const Color(0xff1f2029),
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Text(
            '$qty x',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _item({
    required String image,
    required String title,
    required String price,
    required String item,
  }) {
    return Container(
      margin: const EdgeInsets.only(right: 20, bottom: 20),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: const Color(0xff1f2029),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                style: const TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 20,
                ),
              ),
              Text(
                item,
                style: const TextStyle(
                  color: Colors.white60,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _itemTab(
      {required String icon, required String title, required bool isActive}) {
    return Container(
      width: 180,
      margin: const EdgeInsets.only(right: 26),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff1f2029),
        border: isActive
            ? Border.all(color: Colors.deepOrangeAccent, width: 3)
            : Border.all(color: const Color(0xff1f2029), width: 3),
      ),
      child: Row(
        children: [
          Image.asset(
            icon,
            width: 38,
          ),
          const SizedBox(width: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  Widget _topMenu({
    required String title,
    required String subTitle,
    required Widget action,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              subTitle,
              style: const TextStyle(
                color: Colors.white54,
                fontSize: 10,
              ),
            ),
          ],
        ),
        Expanded(flex: 1, child: Container(width: double.infinity)),
        Expanded(flex: 5, child: action),
      ],
    );
  }

  Widget _search() {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: const Color(0xff1f2029),
        ),
        child: const Row(
          children: [
            Icon(
              Icons.search,
              color: Colors.white54,
            ),
            SizedBox(width: 10),
            Text(
              'Search menu here...',
              style: TextStyle(color: Colors.white54, fontSize: 11),
            )
          ],
        ));
  }
}

Widget bottom(Controller controller, BuildContext context) {
  return BottomNavigationBar(
      currentIndex: controller.index,
      onTap: (int index) {
        print("${index} 222222");
        controller.setIndex(index);
      },
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.amber,
      showUnselectedLabels: false,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.white,
      selectedLabelStyle: const TextStyle(color: Colors.pink),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.table_restaurant),
          label: '12321',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu), label: '321321321'),
      ]);
}

class Controller extends ChangeNotifier {
  int index = 0;
  void setIndex(int newIndex) {
    if (index == newIndex) return;
    index = newIndex;
    notifyListeners();
  }
}

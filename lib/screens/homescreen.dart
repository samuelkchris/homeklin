import 'package:flutter/material.dart';
import '../utils/items.dart';
import '../widgets/custom_bottomnav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String id = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Item> items = [
    Item('Water', Icons.opacity),
    Item('Gas', Icons.local_gas_station),
    Item('Electricity', Icons.flash_on),
    Item('Item 4', Icons.shopping_cart),
    Item('Item 5', Icons.person),
    Item('Item 6', Icons.home),
    Item('Item 7', Icons.favorite),
    Item('Item 8', Icons.music_note),
    Item('Water', Icons.opacity),
    Item('Gas', Icons.local_gas_station),
    Item('Electricity', Icons.flash_on),
    Item('Item 4', Icons.shopping_cart),
    Item('Item 5', Icons.person),
    Item('Item 6', Icons.home),
    Item('Item 7', Icons.favorite),
    Item('Item 8', Icons.music_note),
  ];

  double responsiveHeight(double height) {
    return MediaQuery.of(context).size.height * (height / 896.0);
  }

  double responsiveWidth(double width) {
    return MediaQuery.of(context).size.width * (width / 414.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF213C54),
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: const Text(
          'ADMINISTRATOR',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigator(),
      body: Container(
        color: const Color(0xFF213C54),
        child: Column(
          children: [
            SizedBox(height: responsiveHeight(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: responsiveWidth(300),
                  height: responsiveHeight(150),
                  child: ListTile(
                    onTap: () {},
                    title: const Text(
                      'Bizzy Sammy',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    leading: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/person.jpg'),
                    ),
                    subtitle: const Text(
                      'HOMEKLIN',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: responsiveHeight(540),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: responsiveHeight(20)),
                  Padding(
                    padding: EdgeInsets.all(responsiveWidth(10)),
                    child: Container(
                      width: double.infinity,
                      height: responsiveHeight(50),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(responsiveWidth(5)),
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: responsiveWidth(10)),
                          const Icon(Icons.search),
                          SizedBox(width: responsiveWidth(10)),
                          Text(
                            'Search',
                            style: TextStyle(
                              fontSize: responsiveHeight(20),
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Category
                  SizedBox(height: responsiveHeight(20)),
                  Padding(
                    padding: EdgeInsets.all(responsiveWidth(10)),
                    child: Text(
                      'Category',
                      style: TextStyle(
                        fontSize: responsiveHeight(25),
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: responsiveHeight(250),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        childAspectRatio: 1.5,
                      ),
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        Color containerColor;

                        // Determine container color based on index
                        if (index % 3 == 0) {
                          containerColor = Colors.red;
                        } else if (index % 3 == 1) {
                          containerColor = Colors.orange;
                        } else {
                          containerColor = Colors.blue;
                        }

                        return GridTile(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: containerColor,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                ),
                                child: Icon(
                                  items[index].icon,
                                  size: responsiveWidth(40),
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: responsiveHeight(2.0)),
                              Text(
                                items[index].name,
                                style: const TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(responsiveWidth(10)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text("more >>")],
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

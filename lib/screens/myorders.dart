import 'package:flutter/material.dart';

import '../utils/items.dart';
import '../widgets/custom_bottomnav.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({Key? key}) : super(key: key);
  static const String id = 'my_orders';

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  int currentPage = 1;
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
            'MY ORDERS',
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
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF213C54),
                  Color(0xFF0059A5),
                ],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
            ),
          ),
        ),
        bottomNavigationBar: const CustomBottomNavigator(),
        body: Container(
            child: Column(children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF213C54),
                  Color(0xFF0059A5),
                ],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //two buttons one for complete and the other for in progress
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(),
                      ),
                      child: const Text('Complete'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(),
                      ),
                      child: const Text('In Progress'),
                    ),
                  ),
                ]),
          ),
          //list view of orders
          Expanded(
            child: ListView.builder(
              itemCount: orders.length,
              itemBuilder: (context, index) {
                final order = orders[index];
                final leadingColor = calculateLeadingColor(index);

                // Add space every three orders
                if (index % 3 == 0 && index != 0) {
                  return Column(
                    children: [
                      const SizedBox(height: 5),
                      buildOrderTile(order, leadingColor),
                    ],
                  );
                } else {
                  return buildOrderTile(order, leadingColor);
                }
              },
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  // Handle previous page button action
                  if (currentPage > 1) {
                    setState(() {
                      currentPage--;
                    });
                  }
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
              for (int pageNumber = 1; pageNumber <= 5; pageNumber++)
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: 32.0,
                  height: 32.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        pageNumber == currentPage ? Colors.blue : Colors.grey,
                  ),
                  child: Center(
                    child: Text(
                      pageNumber.toString(),
                      style: TextStyle(
                        color: pageNumber == currentPage
                            ? Colors.white
                            : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              IconButton(
                onPressed: () {
                  if (currentPage < 5) {
                    setState(() {
                      currentPage++;
                    });
                  }
                },
                icon: const Icon(Icons.arrow_forward_ios),
              ),
            ],
          )
        ])));
  }

  Widget buildOrderTile(Order order, Color leadingColor) {
    return ListTile(
      leading: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: leadingColor,
        ),
      ),
      title: Text(order.name),
      subtitle: Text('Product Used: ${order.productName}',
          style: const TextStyle(fontSize: 10)),
      trailing: Text('UGX ${order.amount.toString()}',
          style: const TextStyle(fontSize: 10)),
      onTap: () {},
    );
  }

  Color calculateLeadingColor(int index) {
    return leadingColors[index % leadingColors.length];
  }
}

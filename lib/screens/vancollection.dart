import 'package:flutter/material.dart';

import '../utils/items.dart';
import '../widgets/custom_bottomnav.dart';
import '../widgets/joblist.dart';

class VanCollection extends StatefulWidget {
  const VanCollection({Key? key}) : super(key: key);
  static const String id = 'van_collection';

  @override
  State<VanCollection> createState() => _VanCollectionState();
}

class _VanCollectionState extends State<VanCollection> {
  int currentPage = 1;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF213C54),
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: const Text(
          'VAN COLLECTION',
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
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: screenSize.width * 0.08,
                  foregroundColor: Colors.indigo,
                  backgroundImage: const AssetImage('assets/logo.jpg'),
                ),
                SizedBox(width: screenSize.width * 0.02),
                CircleAvatar(
                  radius: screenSize.width * 0.08,
                  foregroundColor: Colors.indigo,
                  backgroundImage: const AssetImage('assets/lock.jpg'),
                ),
                SizedBox(width: screenSize.width * 0.02),
                CircleAvatar(
                  radius: screenSize.width * 0.08,
                  foregroundColor: Colors.indigo,
                  backgroundImage: const AssetImage('assets/phone.jpg'),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
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
                  child: const Text('BIN ORDERS\t\t\t\t\t\t\t\t\t\t\t\t'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(),
                  ),
                  child: const Text('CUSTOMER\t\t\t\t\t\t'),
                ),
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              //two buttons one for complete and the other for in progress
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(),
                  ),
                  child: const Text('COLLECTION DATE'),
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
                  child: const Text('\t\t\tREPORTS\t\t\t\t\t\t'),
                ),
              ),
            ]),
          ]),
        ),
        Container(
          // color: Colors.white,
          // width: double.infinity,
          child: Column(children: [
            //padded elevated button for confirm order
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(),
                ),
                child: const Text('CONFIRM ORDER'),
              ),
            ),
          ]),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: yourData.length,
            itemBuilder: (context, index) {
              final data = yourData[index];
              return JobListWidget(
                name: data.name,
                transactionLocation: data.transactionLocation,
                isPaid: data.isPaid,
              );
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
                  color: pageNumber == currentPage ? Colors.blue : Colors.grey,
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
      ])),
    );
  }
}

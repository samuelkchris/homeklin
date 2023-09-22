import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../widgets/custom_bottomnav.dart';

class BinCollection extends StatefulWidget {
  const BinCollection({Key? key}) : super(key: key);
  static const String id = 'bin_collection';

  @override
  State<BinCollection> createState() => _BinCollectionState();
}

class _BinCollectionState extends State<BinCollection> {
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
          'BIN COLLECTION',
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 100,
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
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/person.jpg'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Place',
                  prefixIcon: Icon(Icons.place, color: Colors.blue),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Date',
                  prefixIcon: Icon(Icons.date_range, color: Colors.blue),
                  border: OutlineInputBorder(),
                ),
                onTap: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101),
                  ).then((selectedDate) {
                    if (selectedDate != null) {
                      // Handle the selected date
                    }
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Time',
                  prefixIcon: Icon(
                    Icons.access_time,
                    color: Colors.blue,
                  ),
                  border: OutlineInputBorder(),
                ),
                onTap: () {
                  showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  ).then((selectedTime) {
                    if (selectedTime != null) {
                      // Handle the selected time
                    }
                  });
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Hold on a while we connect to the nearby bin collectors",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 180,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: LatLng(0.0, 0.0),
                    zoom: 15.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFF213C54),
                  minimumSize: const Size(200, 50),
                ),
                onPressed: () {},
                child: const Text('Book Now'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

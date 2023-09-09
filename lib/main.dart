import 'package:flutter/material.dart';
import 'package:planty_homes/Maps.dart';

void main() {
  runApp(const MyApp());
}

final TextEditingController _searchController = TextEditingController();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

Widget searchPanel() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(16.0, 5, 16, 5),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 234, 227, 227)),
      // Add padding around the search bar
      // padding: const EdgeInsets.symmetric(horizontal: 8.0),
      // Use a Material design search bar
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          hintText: 'Try searching for a nursery or a plant..',
          hintStyle: const TextStyle(
              fontSize: 14, color: Color.fromARGB(255, 113, 124, 113)),
          // Add a clear button to the search bar
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.mic,
              color: Colors.green,
            ),
            onPressed: () => {},
          ),
          // Add a search icon or button to the search bar
          prefixIcon: IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.green,
            ),
            onPressed: () {
              // Perform the search here
            },
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    ),
  );
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

var dropDownitems = ["Item 1", "2", "3"];
var dropdownvalue;
List<String> cards = ["Gifts", "Fast Delivery", "Ceremic"];
var details = [
  {'name': "Flower", "image": 'assets/flower.jpeg'},
  {'name': "Fruits", "image": 'assets/fruits.jpeg'},
  {'name': "Vegetables", "image": 'assets/vegetables.jpeg'},
  {'name': "Ceremic", "image": 'assets/ceremic.jpeg'},
];

var details2 = [
  {'name': "Hanging", "image": 'assets/hanging.jpeg'},
  {'name': "Spices", "image": 'assets/ceremic.jpeg'},
  {'name': "Relgious", "image": 'assets/religious.jpeg'},
  {'name': "Green Plant", "image": 'assets/green.jpeg'},
];
var nursery = [
  {"image": "assets/nursery.jpeg"},
  {"image": "assets/nursery.jpeg"},
  {"image": "assets/nursery.jpeg"},
  {"image": "assets/nursery.jpeg"},
  {"image": "assets/nursery.jpeg"},
];

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  static final List<Widget> _widgetoptions = <Widget>[
    Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1st part
            Container(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                            radius: 23,
                            backgroundImage:
                                AssetImage("assets/googleMap.png")),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Home",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Pau Sector 35, Chandigarh",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          )
                        ],
                      )
                    ],
                  ),
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("assets/profilePic.png"),
                    ),
                  )
                ],
              ),
            ),

            // 2nd part
            searchPanel(),

            // 3rd Part
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  DropdownButton(
                    elevation: 9,
                    hint: const Text("Sort"),
                    borderRadius: BorderRadius.circular(20),
                    value: dropdownvalue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: dropDownitems.map((String e) {
                      return DropdownMenuItem(value: e, child: Text(e));
                    }).toList(),
                    onChanged: (value) {},
                  ),
                  ...cards.map((e) {
                    return SizedBox(
                        height: 40,
                        // padding: const EdgeInsets.all(8),
                        child: Center(
                          child: Card(
                            elevation: 3,
                            child: Center(
                                child: Container(
                                    padding: const EdgeInsets.all(8),
                                    child: Text(e))),
                          ),
                        ));
                  }).toList()
                ],
              ),
            ),

            // 4th part
            Expanded(
              child: Container(
                // color: Colors.blue,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          // height: 200,
                          // color: Colors.black,s
                          // padding: EdgeInsets.all(16),
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 5),
                          child: const Text(
                            "What's New?",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          )),
                      Container(
                          padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
                          child: Center(
                              child: Image.asset(
                            "assets/hero.png",
                          ))),

                      Container(
                          // color: Colors.black,
                          // padding: EdgeInsets.all(16),
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                          child: const Text(
                            "What to plant today?",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          )),

                      Container(

                          // height: 20,
                          // color: Colors.black38,
                          padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: details.map((e) {
                                return Container(
                                  child: Column(children: [
                                    CircleAvatar(
                                      radius: 40,
                                      backgroundImage: AssetImage(e["image"]!),
                                    ),
                                    Text(e["name"]!)
                                  ]),
                                );
                              }).toList())),
                      Container(

                          // color: Colors.black38,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: details2.map((e) {
                                return Container(
                                  child: Column(children: [
                                    CircleAvatar(
                                      radius: 40,
                                      backgroundImage: AssetImage(e["image"]!),
                                    ),
                                    Text(e["name"]!)
                                  ]),
                                );
                              }).toList())),

                      Container(
                          // color: Colors.black,
                          // padding: EdgeInsets.all(16),
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 5),
                          child: const Text(
                            "Featured Nurseries",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          )),

                      Container(
                        height: 200,
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: nursery.map((e) {
                                return Container(
                                  padding: EdgeInsets.fromLTRB(8, 0, 0, 8),
                                  margin: EdgeInsets.only(right: 10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        20), // Image border
                                    child: SizedBox.fromSize(
                                      size: const Size.fromRadius(
                                          90), // Image radius
                                      child: Image.asset(e["image"]!,
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                );
                              }).toList(),
                            )),
                      )

                      //Center
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    const Text(
      'Page 2',
    ),
    const Text(
      'Page 3',
    ),
    const Text(
      'Page 4',
    ),
    const Maps(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (int index) {
          setState(() {
            this.index = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: index == 0 ? Colors.green : Colors.brown,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              color: index == 1 ? Colors.green : Colors.brown,
              Icons.card_giftcard,
            ),
            label: "Shopping ",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                color: index == 2 ? Colors.green : Colors.brown,
                Icons.construction,
              ),
              label: "Repair "),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pedal_bike,
                color: index == 3 ? Colors.green : Colors.brown,
              ),
              label: "Delivery "),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.map_sharp,
                color: index == 4 ? Colors.green : Colors.brown,
              ),
              label: "Settings "),
        ],
        showUnselectedLabels: false,
        iconSize: 30,
        showSelectedLabels: false,
      ),

      // Body of the Page........
      body: Center(
        child: _widgetoptions.elementAt(index),
      ),
    );
  }
}

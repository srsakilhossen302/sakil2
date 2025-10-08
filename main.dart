import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: MainPage()),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> transactions = [
      {
        "name": "Alamin Sarkar",
        "date": "05 Jan 2024",
        "amount": "+\$200.00",
        "image": "assets/ruma.png",
        "amountColor": Colors.green,
      },
      {
        "name": "Rubel Hasan ",
        "date": "04 Feb 2024",
        "amount": "+\$300.00",
        "image": "assets/ruma.png",
        "amountColor": Colors.red,
      },
      {
        "name": "Spotify",
        "date": "04 Feb 2024",
        "amount": "-\$300.00",
        "image": "assets/ruma.png",
        "amountColor": Colors.green,
      },
      {
        "name": "Raju Ahmed",
        "date": "06 Apr 2024",
        "amount": "+\$500.00",
        "image": "assets/ruma.png",
        "amountColor": Colors.green,
      },
      {
        "name": "Rubel Hasan ",
        "date": "04 Feb 2024",
        "amount": "+\$300.00",
        "image": "assets/ruma.png",
        "amountColor": Colors.red,
      },
      {
        "name": "Najmul Huda",
        "date": "06 Apr 2024",
        "amount": "+\$500.00",
        "image": "assets/ruma.png",
        "amountColor": Colors.green,
      },
      {
        "name": "Sakil Hossen",
        "date": "8 Sep, 2020",
        "amount": "+\$50000.00",
        "image": "assets/ruma.png",
        "amountColor": Colors.green,
      },
      {
        "name": "Ronald ",
        "date": "04 Feb 2024",
        "amount": "+\$500.00",
        "image": "assets/ruma.png",
        "amountColor": Colors.red,
      },
      {
        "name": "Jacob",
        "date": "17 Oct, 2020",
        "amount": "+\$500.00",
        "image": "assets/ruma.png",
        "amountColor": Colors.green,
      },
      {
        "name": "Mitchell",
        "date": "22 Oct, 2020",
        "amount": "+\$500.00",
        "image": "assets/ruma.png",
        "amountColor": Colors.green,
      },
      {
        "name": "Jane Cooper ",
        "date": "22 Oct, 2020",
        "amount": "+\$500.00",
        "image": "assets/ruma.png",
        "amountColor": Colors.red,
      },
      {
        "name": "Rinty Moni",
        "date": "06 Apr 2024",
        "amount": "+\$500.00",
        "image": "assets/rintymoni.png",
        "amountColor": Colors.green,
      },
      {
        "name": "Belal",
        "date": "26 jan 2025",
        "amount": "+\$5000.00",
        "image": "assets/ruma.png",
        "amountColor": Colors.green,
      },
    ];

    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F5F5),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none, size: 18, color: Colors.black),
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(color: Color(0xFF001F40)),
              child: UserAccountsDrawerHeader(
                accountName: Text("Rumi Aktar"),
                accountEmail: Text("rumiaktar@gmail.com"),
              ),
            ),
          ],
        ),
      ),

      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: ListTile(
              title: Text("Hello", style: TextStyle(fontSize: 12)),
              subtitle: Text(
                "Rumi Aktar",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/ruma.png"),
              ),
            ),
          ),

          Container(
            width: 450,
            height: 150,
            margin: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Color(0xFF001F4D),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Stack(
              children: [
                Positioned(
                  // right: 28,
                  left: 250,
                  top: -20,
                  child: Container(
                    width: 88,
                    height: 88,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white30, width: 12),
                    ),
                  ),
                ),
                Positioned(
                  //right: -20,
                  top: -35,
                  left: 295,
                  child: Container(
                    width: 88,
                    height: 88,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white30, width: 12),
                    ),
                  ),
                ),
                Positioned(
                  //right: -20,
                  top: 55,
                  left: -60,
                  child: Container(
                    width: 147,
                    height: 147,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white30, width: 73),
                    ),
                  ),
                ),

                //Master
                Positioned(
                  left: 14,
                  top: 14,
                  child: Image.asset(
                    'assets/mastercard_logo.png',
                    width: 31,
                    height: 19,
                  ),
                ),
                SizedBox(height: 2),

                Positioned(
                  left: 49,
                  top: 13,
                  child: Text(
                    "Master Card",
                    style: TextStyle(fontSize: 10, color: Color(0xFFF5F5F5)),
                  ),
                ),

                Positioned(
                  left: 359,
                  top: 13,
                  child: Image.asset("assets/chip.png", width: 27, height: 20),
                ),
                Positioned(
                  left: 15,
                  top: 75,
                  child: Text(
                    "Card Number",
                    style: TextStyle(fontSize: 8, color: Color(0xFFF5F5F5)),
                  ),
                ),

                Positioned(
                  top: 89,
                  left: 15,
                  child: Text(
                    "8029 2049 4039 8080",
                    style: TextStyle(fontSize: 12, color: Color(0xFFF5F5F5)),
                  ),
                ),
                Positioned(
                  top: 126,
                  left: 15,
                  child: Text(
                    "Rumi Aktar",
                    style: TextStyle(fontSize: 12, color: Color(0xFFF5F5F5)),
                  ),
                ),
                Positioned(
                  left: 329,
                  top: 100,
                  child: Column(
                    children: [
                      Text(
                        "Valid Thru",
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFFF5F5F5),
                        ),
                      ),
                      Text(
                        "9/29",
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFFF5F5F5),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Card(
                      elevation: 4,
                      shadowColor: Colors.grey,
                      child: Container(
                        alignment: Alignment.center,
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Icon(
                          Icons.transform,
                          color: Color(0xFF1F1D47),
                          size: 30,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Transfer",
                      style: TextStyle(color: Color(0xFF1F1D47)),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: Column(
                  children: [
                    Card(
                      elevation: 10,
                      shadowColor: Colors.grey,
                      child: Container(
                        alignment: Alignment.center,
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Icon(
                          Icons.credit_card,
                          color: Color(0xFF1F1D47),
                          size: 30,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Request",
                      style: TextStyle(color: Color(0xFF1F1D47)),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 15),
              //Send============================================
              Expanded(
                child: Column(
                  children: [
                    Card(
                      elevation: 10,
                      shadowColor: Colors.grey,
                      child: Container(
                        alignment: Alignment.center,
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Icon(
                          Icons.people,
                          color: Color(0xFF1F1D47),
                          size: 30,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("Send", style: TextStyle(color: Color(0xFF1F1D47))),
                  ],
                ),
              ),
              SizedBox(width: 15),

              Expanded(
                child: Column(
                  children: [
                    Card(
                      elevation: 10,
                      shadowColor: Colors.grey,
                      child: Container(
                        alignment: Alignment.center,
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Icon(
                          Icons.settings_input_svideo,
                          color: Color(0xFF1F1D47),
                          size: 30,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("Voucher", style: TextStyle(color: Color(0xFF1F1D47))),
                  ],
                ),
              ),

            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Recently Transaction",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "See all",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),



          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                final t = transactions[index];
                return TransactionTile(
                  name: t['name'],
                  date: t['date'],
                  amount: t['amount'],
                  imagePath: t['image'],
                  amountColor: t['amountColor'],
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF001F4D),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: 18, color: Color(0xffE4E4E4)),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.credit_card_outlined,
              size: 18,
              color: Color(0xffE4E4E4),
            ),
            label: "My Cards",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history_edu_outlined,
              size: 18,
              color: Color(0xffE4E4E4),
            ),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_outlined,
              size: 18,
              color: Color(0xffE4E4E4),
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

class TransactionTile extends StatelessWidget {
  final String name;
  final String date;
  final String amount;
  final String imagePath;
  final Color amountColor;

  const TransactionTile({
    super.key,
    required this.name,
    required this.date,
    required this.amount,
    required this.imagePath,
    this.amountColor = Colors.green,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 4,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(radius: 16, backgroundImage: AssetImage(imagePath)),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    date,
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          Text(
            amount,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: amountColor,
            ),
          ),
        ],
      ),
    );
  }
}

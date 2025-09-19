import 'package:flutter/material.dart';
import 'package:my_project/tikawoo/language/advance_screen.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  int currentIndexValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Text(
          "More",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0XFFFFFFFF),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    Icon(Icons.local_offer, color: Colors.green),
                    SizedBox(width: 5),
                    Expanded(
                      child: Text(
                        "Labels",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ),
                    Text("231"),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios_rounded, size: 14),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    Icon(Icons.schedule, color: Colors.green),
                    SizedBox(width: 5),
                    Expanded(
                      child: Text(
                        "Scheduled Transactions",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios_rounded, size: 14),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    Icon(Icons.currency_exchange, color: Colors.green),
                    SizedBox(width: 5),
                    Expanded(
                      child: Text(
                        "Main Currency",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ),
                    Text("CZK"),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios_rounded, size: 14),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    Icon(Icons.wallet, color: Colors.green),
                    SizedBox(width: 5),
                    Expanded(
                      child: Text(
                        "Manual Wallets",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios_rounded, size: 14),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    Icon(Icons.credit_card, color: Colors.green),
                    SizedBox(width: 5),
                    Expanded(
                      child: Text(
                        "Bank Account & E-Wallets",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey, size: 14),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    Icon(
                      Icons.account_balance_wallet_rounded,
                      color: Colors.green,
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: Text(
                        "Authorize your NFT wallet",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey, size: 14),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    Icon(
                      Icons.account_balance_wallet_rounded,
                      color: Colors.green,
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: Text(
                        "Crypto Wallets",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey, size: 14),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Other",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    Icon(Icons.build, color: Colors.green),
                    SizedBox(width: 5),
                    Expanded(
                      child: Text(
                        "Advanced",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AdvanceScreen(),
                          ),
                        );
                      },
                      icon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey, size: 14),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    Icon(Icons.support, color: Colors.green),
                    SizedBox(width: 5),
                    Expanded(
                      child: Text(
                        "Support",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey, size: 14),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    Icon(Icons.policy, color: Colors.green),
                    SizedBox(width: 5),
                    Expanded(
                      child: Text(
                        "Terms and Policies",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey, size: 14),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 150),
                ),
                onPressed: () {},
                child: Text(
                  "Logout",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "Version 5.2.2 (1649959955",
                style: TextStyle(color: Colors.grey.shade400),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            currentIndexValue = index;
          });
        },
        currentIndex: currentIndexValue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.view_timeline_outlined),
            label: "Timeline",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Wallets"),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: "Budgets",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active),
            label: "Activity",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More"),
        ],
      ),
    );
  }
}

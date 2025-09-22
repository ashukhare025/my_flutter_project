import 'package:flutter/material.dart';

class EcommAccountScreen extends StatefulWidget {
  const EcommAccountScreen({super.key});

  @override
  State<EcommAccountScreen> createState() => _EcommAccountScreenState();
}

class _EcommAccountScreenState extends State<EcommAccountScreen> {
  bool isSwitched = false;
  bool isSwitch = false;
  bool isOn = true;
  bool isButtonOn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 16,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Account & Settings',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0XFFFFFFFF),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Account',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Icon(
                      Icons.notifications_active_outlined,
                      color: Color(0xFF707B81),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "Notification Setting",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF1A2530),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color(0xFF707B81),
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Icon(
                      Icons.local_shipping_outlined,
                      color: Color(0xFF707B81),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "Shipping Address",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF1A2530),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color(0xFF707B81),
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Icon(Icons.payment, color: Color(0xFF707B81)),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "Payment info",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF1A2530),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color(0xFF707B81),
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Icon(
                      Icons.delete_outline_outlined,
                      color: Color(0xFF707B81),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "Delete Account",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF1A2530),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color(0xFF707B81),
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(height: 1, color: Colors.grey),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "App Settings",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "Enable Face ID For Log In",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF1A2530),
                        ),
                      ),
                    ),
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      },
                      activeColor: Color(0xFF5B9EE1),
                      inactiveThumbColor: Color(0xFFFFFFFF),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "Enable Push Notification",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF1A2530),
                        ),
                      ),
                    ),
                    Switch(
                      value: isButtonOn,
                      onChanged: (value) {
                        setState(() {
                          isButtonOn = value;
                        });
                      },
                      activeColor: Color(0xFF5B9EE1),
                      inactiveThumbColor: Color(0xFFFFFFFF),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "Enable Location Services",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF1A2530),
                        ),
                      ),
                    ),
                    Switch(
                      value: isOn,
                      onChanged: (value) {
                        setState(() {
                          isOn = value;
                        });
                      },
                      activeColor: Color(0xFF5B9EE1),
                      inactiveThumbColor: Color(0xFFFFFFFF),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "Dark Mode",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF1A2530),
                        ),
                      ),
                    ),
                    Switch(
                      value: isSwitch,
                      onChanged: (value) {
                        setState(() {
                          isSwitch = value;
                        });
                      },
                      activeColor: Color(0xFF5B9EE1),
                      inactiveThumbColor: Color(0xFFFFFFFF),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

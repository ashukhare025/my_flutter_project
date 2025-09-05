import 'package:flutter/material.dart';
import 'package:my_project/tikawoo/sidemenu_screens/bank_details.dart';

import '../../whatsapp_series/home_page_screen.dart';
import '../custom_image.dart';

class CreateAccount2 extends StatefulWidget {
  const CreateAccount2({super.key});

  @override
  State<CreateAccount2> createState() => _CreateAccount2State();
}

class _CreateAccount2State extends State<CreateAccount2> {
  final TextEditingController address1Controller = TextEditingController();
  final TextEditingController address2Controller = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController pincodeController = TextEditingController();

  @override
  void dispose() {
    address1Controller.dispose();
    address2Controller.dispose();
    countryController.dispose();
    stateController.dispose();
    cityController.dispose();
    pincodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xFFD6D6D4),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(image.demo, height: 120, width: 70),
                  SizedBox(width: 10),
                  Image.asset(image.dummyy, height: 125, width: 100),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 15),
                  Container(
                    height: 7,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Color(0XFFF09308),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  Container(
                    height: 7,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Color(0XFFF09308),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  "Create Account",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                    fontFamily: 'FontMain',
                    color: Color(0XFF222741),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Please fill in the form below to create an \naccount. Easy isn't it? ",
                ),
              ),
              SizedBox(height: 25),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      controller: address1Controller,
                      decoration: InputDecoration(
                        hintText: 'Address Line 1',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      controller: address2Controller,
                      decoration: InputDecoration(
                        hintText: 'Address Line 2',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      controller: countryController,
                      decoration: InputDecoration(
                        hintText: 'Country',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      controller: stateController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: 'State',
                        suffixIcon: Icon(
                          Icons.arrow_drop_down,
                          color: Color(0XFFF09308),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      controller: cityController,
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.arrow_drop_down,
                          color: Color(0XFFF09308),
                        ),
                        hintText: 'City',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      controller: pincodeController,
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.arrow_drop_down,
                          color: Color(0XFFF09308),
                        ),
                        hintText: 'Pin Code',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 150,
                        vertical: 15,
                      ),
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Submit',
                      style: TextStyle(fontSize: 12, color: Color(0xFFFFFFFF)),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

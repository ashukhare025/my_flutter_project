import 'package:flutter/material.dart';

import 'Create_Event.dart';

class SignUpTv extends StatefulWidget {
  const SignUpTv({super.key});

  @override
  State<SignUpTv> createState() => _SignUpTv();
}

class _SignUpTv extends State<SignUpTv> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool singleUser = false;
  bool multiUser = false;
  bool isSelected = false;

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    cityController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0XFF14BBC6), Color(0XFFDB00D5)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 25),
              Image.asset('assets/DJ/group.png'),
              SizedBox(height: 10),
              Image.asset(
                'assets/DJ/_7b481d43-e709-49ac-97a6-6b936187f2f5-removebg-preview 1.png',
              ),
              SizedBox(height: 10),
              Text(
                'Create Account',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  fontFamily: 'FontMain',
                ),
              ),
              SizedBox(height: 15),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: 'Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: 'Phone',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      controller: cityController,
                      decoration: InputDecoration(
                        hintText: 'City',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          value: singleUser,
                          side: BorderSide(color: Color(0xFFFFFFFF)),
                          onChanged: (value) {
                            setState(() {
                              singleUser = value!;
                            });
                          },
                        ),
                        Text(
                          'Single User',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(width: 10),

                        Checkbox(
                          value: multiUser,
                          side: BorderSide(color: Color(0xFFFFFFFF)),
                          onChanged: (value) {
                            setState(() {
                              multiUser = value!;
                            });
                          },
                        ),
                        Text(
                          'Multi User',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(thickness: 2, height: 12, indent: 25, endIndent: 25),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Checkbox(
                        side: BorderSide(color: Color(0xFFFFFFFF)),
                        value: isSelected,
                        onChanged: (value) {
                          setState(() {
                            isSelected = value!;
                          });
                        },
                      ),
                      Text(
                        'By Submitting your information, you agree \n'
                        "to the Terms & Conditions of BeatFusion \n"
                        "Music Production.",
                        style: TextStyle(color: Color(0xFFFFFFFF)),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 130,
                        vertical: 10,
                      ),
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Color(0XFF0A0568),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22),
                            ),
                            title: Center(
                              child: Text(
                                'Email Verification',
                                style: TextStyle(
                                  color: Color(0XFFFFFFFF),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'FontMain',
                                ),
                              ),
                            ),
                            content: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(height: 10),
                                Text(
                                  'Enter 4 digit OTP to verify your email id,',
                                  style: TextStyle(
                                    fontFamily: 'FontMain',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Color(0XFFFFFFFF),
                                  ),
                                  maxLines: 1,
                                ),
                                SizedBox(height: 2),
                                Text(
                                  'Sent OTP at johnoe@gmail.com',
                                  style: TextStyle(
                                    fontFamily: 'FontMain',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Color(0XFFFFFFFF),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: List.generate(4, (index) {
                                    return SizedBox(
                                      width: 50,
                                      height: 60,
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        maxLength: 2,
                                        decoration: InputDecoration(
                                          counterText: "",
                                          filled: true,
                                          fillColor: Color(0XFFFFFFFF),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                                SizedBox(height: 5),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 60,
                                      vertical: 10,
                                    ),
                                    backgroundColor: Colors.blue.shade900,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => CreateEvent(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Submit',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'FontMain',
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Color(0XFFFFFFFF),
                        fontWeight: FontWeight.w700,
                        fontFamily: 'FontMain',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Don’t have already account? Signup',
                    style: TextStyle(
                      color: Color(0XFFFFFFFF),
                      fontWeight: FontWeight.w400,
                      fontFamily: 'FontMain',
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

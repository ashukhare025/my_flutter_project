import 'package:flutter/material.dart';


class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            width: 393,
            child: SingleChildScrollView(child: Column(
              children: [SizedBox(height: 20 ),
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [Text('Sign Up',
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 25,color: Colors.deepPurpleAccent),
                  ),
                  ],
                ),
                SizedBox(height: 10),
                Text('Please login or sign up to continue using our app',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14) ,
                    textAlign: TextAlign.start),
                SizedBox(height: 40),
                Text('Enter via Social Networks',
                  style: TextStyle(color: Colors.deepPurpleAccent,
                      fontSize: 17,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [Center(child: Icon(Icons.facebook,size: 40,)
                  ),
                    SizedBox(width: 40),
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [Center(child: Icon(Icons.mail,size:35,)
                      ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text('or login with email',
                  style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(decoration: InputDecoration(
                      label: Icon(Icons.account_circle_outlined,size: 25,),
                      hintText: 'Enter your username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(obscureText: true,decoration: InputDecoration(
                      label: Icon(Icons.password_outlined,size: 25,),
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('I agree with privacy policy')
                  ],
                ),
                SizedBox(height: 30),
                ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
                  child: Text('Sign up',
                    style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  onPressed: () {
                  print('Press Button');},
                ),
                SizedBox(height: 10),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('You already have an account?',
                      style: TextStyle(fontSize: 13,
                          fontWeight: FontWeight.bold,color: Colors.black ),
                    ),
                    TextButton(onPressed: (){ print('Press Login');},
                      child: Text('Login',
                        style: TextStyle(fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ),
          ),
        ),
    );
  }
}
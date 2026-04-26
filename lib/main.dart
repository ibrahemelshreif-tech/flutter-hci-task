// main.dart
// ibrahim elshreif - login app

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool rememberMe = true;

  TextEditingController usernameController = TextEditingController(text: "Ibrahem Elshreif");
  TextEditingController passwordController = TextEditingController(text: "123456789@IB");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F3),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Icon(Icons.arrow_back, size: 28),
                SizedBox(height: 10),

                Center(
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                SizedBox(height: 10),

                Center(
                  child: Text(
                    "Please enter your data to continue",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ),

                SizedBox(height: 65),

                Text("Username"),
                SizedBox(height: 8),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 6,
                        color: Colors.black12,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: usernameController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.check, color: Colors.green),
                    ),
                  ),
                ),

                SizedBox(height: 25),

                Text("Password"),
                SizedBox(height: 8),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 6,
                        color: Colors.black12,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: passwordController,
                    obscureText: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixText: "Strong",
                      suffixStyle: TextStyle(color: Colors.green),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                      );
                    },
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Remember me"),
                    Switch(
                      value: rememberMe,
                      activeColor: Colors.green,
                      onChanged: (value) {
                        setState(() {
                          rememberMe = value;
                        });
                      },
                    ),
                  ],
                ),

                SizedBox(height: 45),

                Center(
                  child: Text(
                    "By connecting your account confirm that you agree",
                    textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(height: 5),

                Center(
                  child: Text(
                    "with our Term and Condition.",
                    textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(height: 75),

                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ----------------------------------------

class SignUpPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F3),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 30),

                Text(
                  "First create your account",
                  style: TextStyle(color: Colors.grey),
                ),

                SizedBox(height: 50),

                TextField(
                  decoration: InputDecoration(
                    hintText: "Full name",
                  ),
                ),

                SizedBox(height: 15),

                TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                  ),
                ),

                SizedBox(height: 15),

                TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    suffixIcon: Icon(Icons.visibility_off, color: Colors.orange),
                  ),
                ),

                SizedBox(height: 15),

                TextField(
                  decoration: InputDecoration(
                    hintText: "Confirm your password",
                    suffixIcon: Icon(Icons.visibility_off, color: Colors.orange),
                  ),
                ),

                SizedBox(height: 35),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 35),

                Text(
                  "Skip now -->",
                  style: TextStyle(color: Colors.grey),
                ),

                SizedBox(height: 35),

                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                    ),
                    onPressed: () {},
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ----------------------------------------

class ForgotPasswordPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F3),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, size: 28),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),

              SizedBox(height: 20),

              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 30),

              Icon(
                Icons.lock,
                size: 100,
                color: Colors.deepPurple,
              ),

              SizedBox(height: 25),

              Text(
                "Please enter your email to reset the password",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),

              SizedBox(height: 25),

              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              SizedBox(height: 25),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                  ),
                  onPressed: () {},
                  child: Text(
                    "Reset Password",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),

              Spacer(),

              Text(
                "Please write your email to receive a confirmation code.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),

              SizedBox(height: 20),

              Container(
                width: double.infinity,
                height: 60,
                color: Colors.deepPurpleAccent,
                child: Center(
                  child: Text(
                    "Confirm Mail",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
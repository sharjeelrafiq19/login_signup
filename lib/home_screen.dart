import 'package:flutter/material.dart';
import 'package:login_signup/login_screen.dart';
import 'package:login_signup/signup_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _passwordVisible = false;



  @override
  void initState() {
    _passwordVisible = false;
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: ListView(
          children: [
            const SizedBox(
              height: 100,
            ),
            Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      height: 50,
                      width: 50,
                      image: AssetImage("assets/images/logo.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Maintenance",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Rubik Medium",
                          ),
                        ),
                        Text(
                          "Box",
                          style: TextStyle(
                            color: Color(0xffe12d0e),
                            fontSize: 20,
                            fontFamily: "Rubik Medium",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Log in",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Rubik Medium",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit",
                  style: TextStyle(
                      color: Color(0xff4c5980), fontFamily: "Rubik Regular"),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                          color: Color(0xff323F4B),
                        ),
                        hintText: "Email",
                        fillColor: const Color(0xffF8F9FA),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: TextFormField(
                    controller: passwordController,
                    autovalidateMode: AutovalidateMode.always,
                    obscureText: !_passwordVisible,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                        color: Color(0xff323F4B),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          // Based on passwordVisible state choose the icon
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Theme.of(context).primaryColorDark,
                        ),
                        onPressed: () {
                          // Update the state i.e. toogle the state of passwordVisible variable
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      hintText: "Password",
                      fillColor: const Color(0xffF8F9FA),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(left: 205),
                  child: TextButton(
                    onPressed: (){},
                    child: const Text(
                      "Forget Password?",
                      style: TextStyle(
                        color: Color(
                          0xff282b2b,
                        ),
                        fontFamily: "Rubik Regular",
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 120,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xffe12d0e),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: const Size(300, 50),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ),
                    );
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 24),
                  ),
                ),

/*
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: const Color(0xffe12d0e),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    "Log In",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Rubik Regular",
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
*/
                const SizedBox(
                  height: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Rubik Regular",
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUp(),
                          ),
                        );
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Color(0xffe12d0e),
                            fontSize: 18,
                            fontFamily: "Rubik Medium"),
                      ),
                    ),
                  ],
                ),
                /*RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Don't have an account?",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Rubik Regular",
                      ),
                    ),
                    TextSpan(
                      text: " Sign Up",
                      style: TextStyle(
                          color: Color(0xffe12d0e),
                          fontSize: 16,
                          fontFamily: "Rubik Medium"),
                    ),
                  ],
                ),
              ),*/
              ],
            ),
          ],
        ),
      ),
    );
  }
}

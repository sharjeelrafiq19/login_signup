import 'package:flutter/material.dart';
import 'package:login_signup/home_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}bool _passwordVisible = false;
bool _confirmpasswordVisible = false;

class _SignUpState extends State<SignUp> {
  @override
  void initState() {
    // TODO: implement initState
    _passwordVisible = false;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
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
                      "Sign up",
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
                    const SizedBox(height: 30,),
                    /// Name
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.person_outline,
                              color: Color(0xff323F4B),
                            ),
                            hintText: "Name",
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
                    /// Email
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: TextFormField(
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
                    /// Password
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: TextFormField(
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
                          ),                      hintText: "Password",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          fillColor: const Color(0xffF8F9FA),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 17,),
                    /// Confirm Password
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.always,
                        obscureText: !_confirmpasswordVisible,
                        decoration: InputDecoration(
                          hintText: " Confirm Password",
                          prefixIcon: const Icon(
                            Icons.lock_outline,
                            color: Color(0xff323F4B),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              // Based on passwordVisible state choose the icon
                              _confirmpasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Theme.of(context).primaryColorDark,
                            ),
                            onPressed: () {
                              // Update the state i.e. toogle the state of passwordVisible variable
                              setState(() {
                                _confirmpasswordVisible = !_confirmpasswordVisible;
                              });
                            },
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          fillColor: const Color(0xffF8F9FA),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
/*
                    const Padding(
                      padding: EdgeInsets.only(left: 205),
                      child: TextButton(
                        onPressed: null,
                        child: Text(
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
*/
                    const SizedBox(
                      height: 50,
                    ),
                    /// Register Button
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xffe12d0e),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          minimumSize: const Size(300, 50),
                        ),
                        onPressed: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },
                        child: const Row(
                          children: [
                            Text(
                              "Register",
                              style: TextStyle(fontSize: 24),
                            ),
                            Spacer(),
                            Icon(Icons.arrow_right_alt_outlined, size: 50,)
                          ],
                        ),
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
                    /// Login Button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account?",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Rubik Regular",
                            fontSize: 16,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            "Login",
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
        ),
      ),
    );
  }
}

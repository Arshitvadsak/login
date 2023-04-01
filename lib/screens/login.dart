import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final signInFormKey = GlobalKey<FormState>();
  TextEditingController emailcontrollar = TextEditingController();
  TextEditingController passwordcontrollar = TextEditingController();
  String? email;
  String? pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 800,
            child: const Image(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover,
              height: double.infinity,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 150),
                  const Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Form(
                    key: signInFormKey,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              fillColor: Colors.white.withOpacity(0.9),
                              filled: true,
                              hintText: "Enter email...",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                            controller: emailcontrollar,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return 'Enter email...';
                              }
                              return null;
                            },
                            onSaved: (val) {
                              email = val;
                            },
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            decoration: InputDecoration(
                              fillColor: Colors.white.withOpacity(0.9),
                              filled: true,
                              hintText: "Enter Password...",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                            controller: passwordcontrollar,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return 'Enter password...';
                              }
                              return null;
                            },
                            onSaved: (val) {
                              pass = val;
                            },
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Remember me",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Format Password?",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          const SizedBox(height: 50),
                          GestureDetector(
                            onTap: () async {
                              // if (signInFormKey.currentState!.validate()) {
                              //   signInFormKey.currentState!.save();
                              //   Map<String, dynamic> res =
                              //       await firebaseAuthhelper.FirebaseAuthhelper
                              //           .signIn(email: email!, password: pass!);

                              //   if (res['user'] != null) {
                              //     //Navigator.of(context).pop();

                              //     ScaffoldMessenger.of(context).showSnackBar(
                              //       const SnackBar(
                              //         content: Text("Sign In succcess..."),
                              //         backgroundColor: Colors.green,
                              //         behavior: SnackBarBehavior.floating,
                              //       ),
                              //     );
                              //     Navigator.of(context).pushReplacementNamed('/');
                              //   } else if (res['error'] != null) {
                              //     ScaffoldMessenger.of(context).showSnackBar(
                              //       SnackBar(
                              //         content: Text("${res['error']}"),
                              //       ),
                              //     );
                              //   } else {
                              //     // Navigator.of(context).pop();

                              //     ScaffoldMessenger.of(context).showSnackBar(
                              //       const SnackBar(
                              //         content: Text("Sign In Failad..."),
                              //       ),
                              //     );
                              //   }
                              // }
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: MediaQuery.of(context).size.height / 15,
                              width: MediaQuery.of(context).size.width * 6,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.green[400],
                              ),
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          Row(
                            children: const [
                              Text(
                                "---------------------------",
                                style: TextStyle(color: Colors.white),
                              ),
                              Spacer(),
                              Text(
                                "Or login with",
                                style: TextStyle(color: Colors.white),
                              ),
                              Spacer(),
                              Text(
                                "---------------------------",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue, width: 2),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: FloatingActionButton(
                                  onPressed: () async {
                                    // Map<String, dynamic> res =
                                    //     await firebaseAuthhelper.FirebaseAuthhelper
                                    //         .signInWithGoogle();
                                    // if (res['user'] != null) {
                                    //   ScaffoldMessenger.of(context).showSnackBar(
                                    //     const SnackBar(
                                    //       content: Text("Login successful..."),
                                    //       backgroundColor: Colors.green,
                                    //       behavior: SnackBarBehavior.floating,
                                    //     ),
                                    //   );
                                    //   Navigator.of(context)
                                    //       .pushReplacementNamed('/');
                                    // } else {
                                    //   ScaffoldMessenger.of(context).showSnackBar(
                                    //     const SnackBar(
                                    //       content: Text("Faild"),
                                    //       behavior: SnackBarBehavior.floating,
                                    //     ),
                                    //   );
                                    // }
                                  },
                                  child: Image(
                                    image:
                                        AssetImage("assets/images/google.png"),
                                    height: 40,
                                    width: 40,
                                  ),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue, width: 2),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: FloatingActionButton(
                                  onPressed: () async {},
                                  child: Image(
                                    image: AssetImage(
                                        "assets/images/facebook.png"),
                                    height: 40,
                                    width: 40,
                                  ),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue, width: 2),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: FloatingActionButton(
                                  onPressed: () async {},
                                  child: Image(
                                    image: AssetImage(
                                        "assets/images/messages.webp"),
                                    width: 40,
                                  ),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue, width: 2),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: FloatingActionButton(
                                  onPressed: () async {},
                                  child: Image(
                                    image:
                                        AssetImage("assets/images/Apple.png"),
                                    height: 70,
                                    width: 70,
                                  ),
                                  backgroundColor: Colors.transparent,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account? ",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, 'signup');
                        },
                        child: Text(
                          "Singup",
                          style:
                              TextStyle(color: Colors.green[400], fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}

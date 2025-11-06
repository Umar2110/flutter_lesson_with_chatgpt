import 'package:flutter/material.dart';

class Lesson14 extends StatefulWidget {
  const Lesson14({super.key});

  @override
  State<Lesson14> createState() => _Lesson14State();
}

class _Lesson14State extends State<Lesson14> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  String message = "";

  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPassword.dispose();
  }

  void _submitform() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        message = "Login SuccessFul: ${_emailController.text}";
      });
    } else {
      setState(() {
        message = "Login Failed: Please Fix Errors Above";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Login Form',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.all(5),
                  child: TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Enter Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email is required";
                      } else if (!value.contains("@")) {
                        return "Please Enter Valid Email";
                      }
                      ;
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          labelText: 'Enter Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),

                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password required";
                          } else if (value.length < 6) {
                            return "Password length must be greater then 6";
                          }
                          return null;
                        },
                      ),

                      SizedBox(height: 10),

                      TextFormField(
                        controller: _confirmPassword,
                        decoration: InputDecoration(
                          labelText: "Confirm Passowrd",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        validator: (value) {
                          if (value != _passwordController.text) {
                            return "Password must be matched";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _submitform,
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontSize: 26,
                    ),
                  ),
                ),

                Text(
                  message,
                  style: TextStyle(
                    fontSize: 20,
                    color: message.contains("SuccessFul")
                        ? Colors.green
                        : Colors.red,
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

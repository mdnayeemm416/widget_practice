import 'package:flutter/material.dart';
import 'package:widget_practice/function/function.dart';

class Login_form extends StatefulWidget {
  const Login_form({super.key});

  @override
  State<Login_form> createState() => _Login_formState();
}

class _Login_formState extends State<Login_form> {
  final _formkey = GlobalKey<FormState>();
  bool Islogin = false;

  String UserName = "";
  String Email = "";
  String Password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Form(
          key: _formkey,
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Column(children: [
                !Islogin
                    ? TextFormField(
                        key: ValueKey("user Name"),
                        decoration: InputDecoration(hintText: "User Name"),
                        validator: (value) {
                          if (value.toString().length <= 3) {
                            return "Please use a different username";
                          } else {
                            return null;
                          }
                        },
                        onSaved: (newValue) {
                          UserName = newValue!;
                        },
                      )
                    : Container(),
                TextFormField(
                  key: ValueKey("email"),
                  decoration: InputDecoration(hintText: "Email"),
                  validator: (value) {
                    if (!(value.toString().contains("@"))) {
                      return "Please use a different username";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (newValue) {
                    Email = newValue!;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  key: ValueKey("Password"),
                  decoration: InputDecoration(hintText: "Password"),
                  validator: (value) {
                    if (value.toString().length <= 5) {
                      return "Password length must be greater then 5";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (newValue) {
                    Password = newValue!;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          _formkey.currentState!.save();
                          Islogin
                              ? signIn(Email, Password)
                              : signUp(Email, Password);
                        } else {
                          print("error");
                        }
                        ;
                      },
                      child: Islogin ? Text('Log In') : Text("Sign Up")),
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        Islogin = !Islogin;
                      });
                    },
                    child: Islogin
                        ? Text("Need to Sign Up")
                        : Text("Already Have a account| Log in?"))
              ]),
            ),
          )),
    );
  }
}

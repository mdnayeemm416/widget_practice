import 'package:flutter/material.dart';

class form_widget extends StatefulWidget {
  const form_widget({super.key});

  @override
  State<form_widget> createState() => _form_widgetState();
}

class _form_widgetState extends State<form_widget> {
  final _formkey = GlobalKey<FormState>();
  String firstname = '';
  String Secondname = '';
  String Email = '';
  String Password = '';
  String retype_passord = '';

  submit() {
    final isvalid = _formkey.currentState!.validate();
    _formkey.currentState!.save();
    if (isvalid) {
      submitform();
    } else {
      return "Error";
    }
  }

  submitform() {
    print(firstname);
    print(Secondname);
    print(Email);
    print(Password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            key: _formkey,
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(hintText: "First Name"),
                      key: ValueKey("firstname"),
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return " Enter First Name";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (newValue) {
                        firstname = newValue!;
                      },
                    ),
                    TextFormField(
                      key: ValueKey("Second name"),
                      decoration: InputDecoration(hintText: "Second Name"),
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return " Enter Second Name";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (newValue) {
                        Secondname = newValue!;
                      },
                    ),
                    TextFormField(
                      key: ValueKey("Email"),
                      decoration: InputDecoration(hintText: "Email"),
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return " Enter Email";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (newValue) {
                        Email = newValue!;
                      },
                    ),
                    TextFormField(
                      key: ValueKey("Password"),
                      decoration: InputDecoration(hintText: "Password"),
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return " Enter Password";
                        } else {
                          return null;
                        }
                      },
                      onChanged: (newValue) {
                        Password = newValue;
                      },
                    ),
                    TextFormField(
                      key: ValueKey("retype_password"),
                      decoration: InputDecoration(hintText: "ReType Passrord"),
                      validator: (value) {
                        if (value.toString() != Password) {
                          return " paswword not Matched";
                        } else {
                          return null;
                        }
                      },
                      onChanged: (newValue) {
                        retype_passord = newValue;
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextButton(
                        onPressed: () {
                          submit();
                        },
                        child: Text("Submit"))
                  ],
                ),
              ),
            )));
  }
}

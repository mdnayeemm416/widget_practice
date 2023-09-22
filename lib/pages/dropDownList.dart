import 'package:flutter/material.dart';

class Dropdownlist extends StatefulWidget {
  const Dropdownlist({super.key});

  @override
  State<Dropdownlist> createState() => _DropdownlistState();
}

class _DropdownlistState extends State<Dropdownlist> {
  String selectvalue = "Mango";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: DropdownButton<String>(
              value: selectvalue,
              items: ["orange", "Apple", "Malta", "Mango"]
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                    value: value, child: Text(value));
              }).toList(),
              onChanged: (String? newvalue) {
                setState(() {
                  selectvalue = newvalue!;
                });
              }),
        )
      ]),
    );
  }
}

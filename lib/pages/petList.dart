import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PetList_widget extends StatefulWidget {
  const PetList_widget({super.key});

  @override
  State<PetList_widget> createState() => _PetList_widgetState();
}

class _PetList_widgetState extends State<PetList_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pets List")),
      body: Container(
        child: StreamBuilder(
            stream: FirebaseFirestore.instance.collection("pets").snapshots(),
            builder: (context, petSnapshot) {
              if (petSnapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                final petDocs = petSnapshot.data!.docs;
                return ListView.builder(
                    itemCount: petDocs.length,
                    itemBuilder: (context, Index) {
                      return ListTile(
                        title: Text(petDocs[Index]["name"]),
                        subtitle: Text(petDocs[Index]["Animal"]),
                      );
                    });
              }
            }),
      ),
    );
  }
}

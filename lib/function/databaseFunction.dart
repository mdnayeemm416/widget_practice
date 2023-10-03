import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

create(String CollName, DocName, name, int age, animal) async {
  await FirebaseFirestore.instance
      .collection(CollName)
      .doc(DocName)
      .set({"name": name, "age": age, "Animal": animal});
}

update(String CollName, DocName, field, var Newfield) async {
  await FirebaseFirestore.instance
      .collection(CollName)
      .doc(DocName)
      .update({field: Newfield});
}

Delete(String Colname, DocName) async {
  await FirebaseFirestore.instance.collection(Colname).doc(DocName).delete();
}

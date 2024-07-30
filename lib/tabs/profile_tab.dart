import 'package:belajar_flutter_batch_2/models/contact.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {

  final contactList = [
    Contact(
      name: "John Lenon", 
      phoneNumber: "+1823232932932", 
      intial: "JL"
    ),
    Contact(
      name: "Ibrahim", 
      phoneNumber: "+1823322333333", 
      intial: "I"
    ),
    Contact(
      name: "Kaka", 
      phoneNumber: "+1823329948874", 
      intial: "K"
    ),
    Contact(
      name: "John Lenon", 
      phoneNumber: "+1823232932932", 
      intial: "JL"
    ),
    Contact(
      name: "Ibrahim", 
      phoneNumber: "+1823322333333", 
      intial: "I"
    ),
    Contact(
      name: "Kaka", 
      phoneNumber: "+1823329948874", 
      intial: "K"
    ),
    Contact(
      name: "John Lenon", 
      phoneNumber: "+1823232932932", 
      intial: "JL"
    ),
    Contact(
      name: "Ibrahim", 
      phoneNumber: "+1823322333333", 
      intial: "I"
    ),
    Contact(
      name: "Kaka", 
      phoneNumber: "+1823329948874", 
      intial: "K"
    ),
    Contact(
      name: "John Lenon", 
      phoneNumber: "+1823232932932", 
      intial: "JL"
    ),
    Contact(
      name: "Ibrahim", 
      phoneNumber: "+1823322333333", 
      intial: "I"
    ),
    Contact(
      name: "Kaka", 
      phoneNumber: "+1823329948874", 
      intial: "K"
    ),
    Contact(
      name: "John Lenon", 
      phoneNumber: "+1823232932932", 
      intial: "JL"
    ),
    Contact(
      name: "Ibrahim", 
      phoneNumber: "+1823322333333", 
      intial: "I"
    ),
    Contact(
      name: "Kaka", 
      phoneNumber: "+1823329948874", 
      intial: "K"
    ),
    Contact(
      name: "John Lenon", 
      phoneNumber: "+1823232932932", 
      intial: "JL"
    ),
    Contact(
      name: "Ibrahim", 
      phoneNumber: "+1823322333333", 
      intial: "I"
    ),
    Contact(
      name: "Kaka", 
      phoneNumber: "+1823329948874", 
      intial: "K"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: contactList.length,
      itemBuilder: (context, index) => ListTile(
        leading: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(50)
          ),
          child: Center(
            child: Text(
              contactList[index].intial,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            )
          ),
        ),
        title: Text(contactList[index].name),
        subtitle: Text(contactList[index].phoneNumber),
      ), 
    );
  }
}
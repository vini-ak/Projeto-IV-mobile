import 'package:flutter/material.dart';
import 'package:ui/core/models/contact.dart';

class AppListTile extends StatelessWidget {
  final Contact contact;

  AppListTile({required this.contact});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {},
          ),
          tileColor: Colors.black12,
          title: Text(contact.name),
        ),
        Divider()
      ],
    );
  }
}

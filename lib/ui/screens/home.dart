import 'package:flutter/material.dart';
import 'package:ui/core/enums/group.dart';
import 'package:ui/core/models/contact.dart';
import 'package:ui/ui/components/app_list_tile.dart';
import 'package:ui/ui/shared/constans.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Contact> _contacts;
  int _total = 0;

  @override
  void initState() {
    super.initState();
    _contacts = _getContacts();
    _total = _contacts.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _buildAppBarTitle(),
        actions: [
          IconButton(icon: Icon(Icons.refresh), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      floatingActionButton: _buildFloatingActionButton(),
      body: _buildBody(),
    );
  }

  _buildAppBarTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Contatos"),
        Text(
          "$_total contatos",
          style: TextStyle(color: Colors.white60, fontSize: 14),
        ),
      ],
    );
  }

  _buildBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: DefaultSizeValues.EXTRALARGE),
      child: Column(
        children: [
          _buildTitle(),
          _buildSubtitle(),
          _buildContactList(),
        ],
      ),
    );
  }

  _buildTitle() {
    return Padding(
      padding: const EdgeInsets.only(
        top: DefaultSizeValues.LARGE,
        bottom: DefaultSizeValues.SMALL,
      ),
      child: Text(
        "Lista de contatos",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  _buildSubtitle() {
    return Padding(
      padding: const EdgeInsets.only(bottom: DefaultSizeValues.LARGE),
      child: Text(
        "Clique em um contato para ver mais informações.",
        style: TextStyle(
          color: Colors.black54,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  _buildContactList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: _contacts.length,
      itemBuilder: (_, index) => AppListTile(
        contact: _contacts[index],
      ),
    );
  }

  _getContacts() {
    List<Contact> contacts = [
      Contact(
          id: 1,
          name: "Emerson Leonardo",
          telephone: "(81) 98888-8888",
          group: Group.College,
          age: 23,
          block: false),
      Contact(
          id: 3,
          name: "Filipe Lima",
          telephone: "(81) 98888-8888",
          age: 28,
          group: Group.College,
          block: false),
      Contact(
          id: 2,
          name: "Andressa Santana",
          telephone: "(81) 98888-8888",
          age: 23,
          group: Group.College,
          block: false),
      Contact(
          id: 9,
          name: "Lhaislla Cavalcanti",
          telephone: "(81) 98888-8888",
          age: 23,
          group: Group.College,
          block: false),
      Contact(
          id: 12,
          name: "Paulo Sena",
          telephone: "(81) 98888-8888",
          age: 21,
          group: Group.College,
          block: false),
      Contact(
          id: 12,
          name: "Abson Francisco",
          telephone: "(81) 98888-8888",
          age: 21,
          group: Group.HighSchool,
          block: false),
      Contact(
          id: 12,
          name: "Gabriel Fernando",
          telephone: "(81) 98888-8888",
          age: 21,
          group: Group.HighSchool,
          block: false),
      Contact(
          id: 7,
          name: "Maria José",
          telephone: "(81) 98888-8888",
          age: 21,
          group: Group.Mother,
          block: false),
      Contact(
          id: 7,
          name: "Ana Vitória",
          telephone: "(81) 98888-8888",
          age: 21,
          group: Group.Lover,
          block: false),
    ];

    contacts.sort((a, b) => a.name.compareTo(b.name));

    return contacts;
  }

  _buildFloatingActionButton() {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () => Navigator.pushNamed(context, '/add'),
    );
  }
}

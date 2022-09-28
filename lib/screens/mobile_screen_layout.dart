import 'package:flutter/material.dart';
import '../widgets/colors.dart';
import '../widgets/contactList.dart';

class mobileScreenLayout extends StatelessWidget {
  const mobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.grey,
              ),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 4,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(
                text: 'CALLS',
              )
            ],
          ),
        ),
        body: const ContactList(),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: tabColor,
          child: const Icon(Icons.comment,color: Colors.white,),
        ),
      ),
    );
  }
}

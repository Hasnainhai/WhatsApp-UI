import 'package:flutter/material.dart';
import '../screens/mobile_chat_screen.dart';
import '../widgets/colors.dart';
import '../widgets/info.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const MobileChatScreen())
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: ListTile(
                    title: Text(
                      info[index]['name'].toString(),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(info[index]['message'].toString()),
                    ),
                    leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage:
                          NetworkImage(info[index]['profilePic'].toString()),
                    ),
                    trailing: Text(
                      info[index]['time'].toString(),
                      style: const TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const Divider(color: dividerColor),
            ],
          );
        },
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:testfluter/cours/exercices/gmailui/data/messages.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  // title passed to class constructor

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(widget.title),
          actions: [
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.search)
            ),
          ],
        ),
        body: ListView.builder(
            itemCount: messages.length,
            itemBuilder: (context, index){
              return ListTile(
                shape: Border(
                  bottom: BorderSide(color: Colors.grey, width: 0.3)
                ),
                isThreeLine: true, // Elle sert à indiquer que ton ListTile doit être conçu pour afficher jusqu’à 3 lignes de texte au noveau du subtitle.
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.primaries[
                    Random().nextInt(Colors.primaries.length)
                  ].shade200,
                  foregroundColor: Colors.black,
                  child: Text(messages[index]["title"]![0]),
                ),
                title: Text(messages[index]["title"]!),
                subtitle: Text(
                    messages[index]["body"]!,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                        TimeOfDay.fromDateTime(
                          DateTime.parse(messages[index]["date"].toString())
                        ).format(context)
                    ),
                    const Icon(Icons.star_outline)
                  ],
                ),
              );
            },
        ),

      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text(
                  "Gmail",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: Theme.of(context).textTheme.titleLarge?.fontSize
                  )
              ),
            ),
            const Divider(),
            ListTile(
              leading: Icon(Icons.all_inbox),
              title: Text("All inboxes"),
            ),
            ListTile(
              leading: Icon(Icons.inbox),
              title: Text("Primary"),
            ),
            ListTile(
              leading: Icon(Icons.group_outlined),
              title: Text("Social"),
            ),
            ListTile(
              leading: Icon(Icons.discount_outlined),
              title: Text("Promotions"),
              trailing: Chip(
                backgroundColor: Colors.lightGreen,
                  label: Text("99++ new")
              ),
            ),
            const Divider(),
            ListTile(
              leading: Icon(Icons.star_outline),
              title: Text("Starred"),
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text("Snoozed"),
            ),
            ListTile(
              leading: Icon(Icons.label_important_outline),
              title: Text("Important"),
              trailing: Text("3"),
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text("Sent"),
            ),
            ListTile(
              leading: Icon(Icons.schedule_send_outlined),
              title: Text("Schedule"),
            ),
            ListTile(
              leading: Icon(Icons.outbond_outlined),
              title: Text("OutBox"),
            ),
            ListTile(
              leading: Icon(Icons.inbox),
              title: Text("Drafts"),
              trailing: Text("99+"),
            ),
            ListTile(
              leading: Icon(Icons.email_outlined),
              title: Text("All mail"),
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text("Spam"),
            ),
            ListTile(
              leading: Icon(Icons.delete_outline),
              title: Text("Trash"),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
          onPressed: (){},
        child: Icon(Icons.edit),
      ),
    );
  }
}
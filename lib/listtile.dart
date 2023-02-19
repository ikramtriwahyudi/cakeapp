import 'package:flutter/material.dart';

class Listtile extends StatefulWidget {
  const Listtile({super.key});

  @override
  State<Listtile> createState() => _ListtileState();
}

class _ListtileState extends State<Listtile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List tile"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 0; i < 20; i++)
                ListTile(
                  leading: Icon(
                    Icons.account_circle,
                    size: 40,
                  ),
                  title: Text(
                    "Ikram",
                    style: TextStyle(fontSize: 18),
                  ),
                  subtitle: Text("Hello World "),
                  trailing: Title(color: Colors.grey, child: Text("14.55")),
                  isThreeLine: false,
                  dense: true,
                  shape: Border(
                    bottom: BorderSide(width: 0.5),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}

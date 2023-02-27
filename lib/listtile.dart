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
        title: const Text("List tile"),
      ),
      body: ListView(
        children: [
          for (int i = 0; i < 1; i++) const Chatitem(),
          const Chatitem()
        ],
      ),
    );
  }
}

class Chatitem extends StatelessWidget {
  const Chatitem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        child: Icon(Icons.account_circle_rounded),
      ),
      title: const Text(
        "Ikram",
        style: TextStyle(fontSize: 18),
      ),
      subtitle: const Text("Hello World "),
      trailing: Title(color: Colors.grey, child: const Text("14.55")),
      isThreeLine: false,
      dense: true,
      shape: const Border(
        bottom: BorderSide(width: 0.5),
      ),
    );
  }
}

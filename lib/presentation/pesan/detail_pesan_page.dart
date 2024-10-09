// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/chat_bubble.dart';

class DetailPesanPage extends StatelessWidget {
  final String name;
  const DetailPesanPage({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CupertinoButton(
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          name,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(
                  parent: BouncingScrollPhysics()),
              reverse: true,
              padding: const EdgeInsets.all(10),
              children: const [
                ChatBubble(
                  direction: Direction.left,
                  message: "Sediakan didepan",
                  type: BubbleType.alone,
                ),
                ChatBubble(
                  direction: Direction.right,
                  message: "Baik pak",
                  type: BubbleType.alone,
                ),
                ChatBubble(
                  direction: Direction.left,
                  message: "Sampah akan segera diambil",
                  type: BubbleType.alone,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Ketik pesan...',
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

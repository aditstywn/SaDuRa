import 'package:flutter/material.dart';

enum BubbleType { top, middle, bottom, alone }

enum Direction { left, right }

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
    required this.direction,
    required this.message,
    required this.type,
  });

  final Direction direction;
  final String message;
  final BubbleType type;

  @override
  Widget build(BuildContext context) {
    final isOnLeft = direction == Direction.left;
    return Row(
      mainAxisAlignment:
          isOnLeft ? MainAxisAlignment.start : MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.8),
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            borderRadius: _borderRadius(),
            color: isOnLeft ? Colors.grey[200] : Theme.of(context).primaryColor,
          ),
          child: Text(
            message,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: isOnLeft ? Colors.black : Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  BorderRadius _borderRadius() {
    const radius1 = Radius.circular(15);
    const radius2 = Radius.circular(5);

    switch (type) {
      case BubbleType.top:
        return direction == Direction.left
            ? const BorderRadius.only(
                topLeft: radius1,
                topRight: radius1,
                bottomLeft: radius2,
              )
            : const BorderRadius.only(
                topLeft: radius1,
                topRight: radius1,
                bottomRight: radius2,
              );
      case BubbleType.middle:
        return direction == Direction.left
            ? const BorderRadius.only(
                topRight: radius1,
                bottomRight: radius1,
                bottomLeft: radius2,
              )
            : const BorderRadius.only(
                topLeft: radius1,
                bottomLeft: radius1,
                bottomRight: radius2,
              );
      case BubbleType.bottom:
        return direction == Direction.left
            ? const BorderRadius.only(
                topRight: radius1,
                bottomLeft: radius1,
                bottomRight: radius1,
              )
            : const BorderRadius.only(
                topLeft: radius1,
                bottomLeft: radius1,
                bottomRight: radius1,
              );
      case BubbleType.alone:
        return BorderRadius.circular(15);
    }
  }
}

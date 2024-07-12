// lib/widgets/emoji_picker.dart
import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';

class EmojiPicker extends StatelessWidget {
  final Function(String, EmojiCategory) onEmojiSelected;

  EmojiPicker({required this.onEmojiSelected});

  @override
  Widget build(BuildContext context) {
    final parser = EmojiParser();
    var emojis;

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 8,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
      ),
      itemCount: emojis.length,
      itemBuilder: (context, index) {
        final emoji = emojis[index];
        return GestureDetector(
          onTap: () => onEmojiSelected(emoji.emoji, emoji.category),
          child: Center(child: Text(emoji.emoji)),
        );
      },
    );
  }
}

class EmojiCategory {
}

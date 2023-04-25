import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticonFace;
  final String emotionFace;
  const EmoticonFace(
      {Key? key, required this.emoticonFace, required this.emotionFace})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[600],
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(16),
          child: Text(
            emoticonFace,
            style: const TextStyle(fontSize: 24),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          emotionFace,
          style: const TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

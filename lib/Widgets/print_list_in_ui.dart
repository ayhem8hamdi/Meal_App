import 'package:flutter/material.dart';

class PrintListInUI extends StatelessWidget {
  const PrintListInUI({super.key, required this.list});
  final List<String> list;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: list
            .map((element) => Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  child: Text(
                    '- $element',
                    style: const TextStyle(fontSize: 21),
                  ),
                ))
            .toList(),
      ),
    );
  }
}

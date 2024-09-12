import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key, required this.icondata, required this.text, this.onTap});
  final IconData icondata;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsetsDirectional.symmetric(
        horizontal: 25,
      ),
      leading: Icon(
        icondata,
        size: 36,
      ),
      title: Text(
        text,
        style: const TextStyle(fontSize: 27),
      ),
    );
  }
}

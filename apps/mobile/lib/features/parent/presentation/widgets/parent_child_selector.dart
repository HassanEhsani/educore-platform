import 'package:flutter/material.dart';

class ParentChildSelector extends StatelessWidget {
  final String childName;
  final String childClass;

  const ParentChildSelector({
    super.key,
    required this.childName,
    required this.childClass,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),

      child: ListTile(
        leading: const CircleAvatar(child: Icon(Icons.person)),

        title: Text(
          childName,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),

        subtitle: Text(childClass),

        trailing: const Icon(Icons.keyboard_arrow_down),
      ),
    );
  }
}

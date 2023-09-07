import 'package:flutter/material.dart';

class searchPanel extends StatefulWidget {
  const searchPanel({super.key, });

  @override
  State<searchPanel> createState() => _searchPanelState();
}

class _searchPanelState extends State<searchPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Text("This is Search Panel"),
      ),
    );
  }
}

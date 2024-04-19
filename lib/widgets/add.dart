import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  Color darkBackground = const Color(0xFF1C1C1E);
  bool darkMode = false;

  @override
  void initState() {
    super.initState();
    _loadDarkMode();
  }

  _loadDarkMode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      darkMode = prefs.getBool('darkMode') ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? darkBackground : Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          'Add',
          style: TextStyle(
            fontFamily: 'Roboto',
            decoration: TextDecoration.none,
          ),
        ),
        centerTitle: true,
        backgroundColor: darkMode ? darkBackground : Colors.grey[100],
        elevation: 1,
        leading: null,
      ),
      body: const Center(
        child: Text(
          'Add',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}

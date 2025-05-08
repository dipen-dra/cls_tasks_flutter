import 'package:flutter/material.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color.fromARGB(220, 0, 0, 0)),
            borderRadius: BorderRadius.circular(1),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(31, 17, 17, 17),
                blurRadius: 6,
                offset: const Offset(2, 2),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildColumn(Icons.call, "Call", iconColor: const Color.fromARGB(255, 70, 165, 90)),
              buildColumn(Icons.near_me, "Route"),
              buildColumn(Icons.share, "Share"),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildColumn(IconData icon, String label, {Color iconColor = Colors.teal}) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(icon, color: iconColor, size: 28),
      const SizedBox(height: 8),
      Text(
        label,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Color.fromARGB(255, 9, 22, 204),
        ),
      ),
    ],
  );
}

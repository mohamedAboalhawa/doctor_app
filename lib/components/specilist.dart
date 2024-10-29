import 'package:flutter/material.dart';

class Specilist extends StatelessWidget {
  final String name, speciality, institute, image;
  const Specilist({
    required this.name,
    required this.speciality,
    required this.institute,
    required this.image,
    super.key,
  });

  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF255ED6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Looking for your desire \n specialist doctor?",
                  style: TextStyle(color: Colors.white),
                ),
                Spacer(),
                Text(
                  name,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  speciality,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  institute,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Container(
              child: Image.asset(image),
            )
          ],
        ),
      ),
    );
  }
}

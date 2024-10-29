import 'package:doctor/models/AvailableDoctor.dart';
import 'package:flutter/material.dart';

class DoctorProfile extends StatelessWidget {
  final AvailableDoctor info;

  const DoctorProfile({
    super.key,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text(info.name ?? "Doctor Profile"), // Show doctor name in app bar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 400,
                width: 400,
                child: ClipPath(
                  child: Image.asset(
                    info.image ?? 'assets/images/default.png', // Default image
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16), // Space between image and buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(color: Colors.blue, text: "Voice Call"),
                CustomButton(color: Colors.purple, text: "Video Call"),
                CustomButton(color: Colors.orangeAccent, text: "Message"),
              ],
            ),
            SizedBox(height: 16), // Space between buttons and sector
            Text(
              info.sector ?? 'Unknown Sector',
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            SizedBox(
                height: 16), // Space between sector and patient/experience info
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoColumn(label: "Patients", value: info.patients ?? 'N/A'),
                InfoColumn(
                    label: "Experience",
                    value: "${info.experience ?? 0} Years"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final Color color;
  final String text;

  const CustomButton({
    super.key,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        // Add your onPressed logic here
      },
      color: color,
      textColor: Colors.white, // Change text color to white for better contrast
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8), // Rounded corners
      ),
      child: Text(text),
    );
  }
}

class InfoColumn extends StatelessWidget {
  final String label;
  final String value;

  const InfoColumn({Key? key, required this.label, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        SizedBox(height: 4), // Space between label and value
        Text(
          value,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

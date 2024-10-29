import 'package:doctor/components/available_doctor_card.dart';
import 'package:doctor/components/custom_app_bar.dart';
import 'package:doctor/models/AvailableDoctor.dart';
import 'package:flutter/material.dart';

class AvilableSpecialist extends StatelessWidget {
  const AvilableSpecialist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(text: "Find You", title: "Specialist"),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(
                    10.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, 
                    crossAxisSpacing: 10, 
                    mainAxisSpacing: 10, 
                    childAspectRatio:
                        0.75,
                  ),
                  itemCount: demoAvailableDoctors.length,
                  itemBuilder: (BuildContext context, int index) {
                    return AvailableDoctorCard(
                      info: demoAvailableDoctors[index],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

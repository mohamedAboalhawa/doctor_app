import 'package:doctor/components/available_doctor_card.dart';
import 'package:doctor/components/category_item.dart';
import 'package:doctor/components/custom_app_bar.dart';
import 'package:doctor/components/section_title.dart';
import 'package:doctor/components/specilist.dart';
import 'package:doctor/models/AvailableDoctor.dart';
import 'package:doctor/models/Category.dart';
import 'package:doctor/models/RecommendDoctor.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(text: "Find Your", title: "Specialist"),
              SizedBox(
                height: 175, 
                child: ListView.builder(
                  itemCount: demo_recommended_doctor.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Specilist(
                      name: demo_recommended_doctor[index].name,
                      speciality: demo_recommended_doctor[index].speciality,
                      institute: demo_recommended_doctor[index].institute,
                      image: demo_recommended_doctor[index].image,
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              SectionTitle(title: "Categories", pressOnSeeAll: () {}),
              SizedBox(height: 10),
              SizedBox(
                height: 122, 
                child: ListView.builder(
                  itemCount: demo_categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return CategoryItem(
                      icon: demo_categories[index].icon,
                      title: demo_categories[index].title,
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              SectionTitle(title: "Available Doctor", pressOnSeeAll: () {}),
              SizedBox(height: 10),
              SizedBox(
                height: 250, 
                child: ListView.builder(
                  itemCount: demoAvailableDoctors.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return AvailableDoctorCard(
                      info: demoAvailableDoctors[index],
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:creative_task2/utils/utils.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width(context),
      height: height(context) * .2,
      child: ListView.builder(
          reverse: true,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: width(context) * .4,
                height: height(context) * .2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          categories[index]['image'],
                        ))),
                child: Stack(
                  children: [
                    SizedBox(
                      width: width(context) * .4,
                      height: height(context) * .2,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black.withOpacity(.2),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        categories[index]['title'],
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

List categories = [
  {'title': 'الطلب السريع', 'image': 'assets/images/delivery.jpg'},
  {'title': 'المطاعم', 'image': 'assets/images/rest.jpg'},
  {'title': 'بقالة', 'image': 'assets/images/baa.jpg'},
];

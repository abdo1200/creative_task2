import 'package:creative_task2/utils/utils.dart';
import 'package:flutter/material.dart';

class MayLike extends StatelessWidget {
  const MayLike({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width(context),
      height: height(context) * .34,
      child: ListView.builder(
          reverse: true,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 2,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: width(context) * .7,
                height: height(context) * .3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                      width: .2,
                    )),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(categories[index]['image']))),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 10, bottom: 5),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(Icons.shopping_cart_outlined),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              categories[index]['name'],
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              'ج',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 60, 74, 82),
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '60   ',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 60, 74, 82),
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(' • '),
                            Text(
                              'ج',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 60, 74, 82),
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '30',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 60, 74, 82),
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              'مطعم هندى   ',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 60, 74, 82),
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 30,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/delivery.jpg'),
                              ),
                            )
                          ]),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

List categories = [
  {
    'name': 'وجبة الأكيل',
    'image': 'assets/images/kofta.jpg',
    'type': 'برجر . فرايد تشيكن'
  },
  {'name': 'كنتاكي', 'image': 'assets/images/kfc.jpg', 'type': 'متجر السلام'},
  {
    'name': 'ماكدونالد',
    'image': 'assets/images/mac.png',
    'type': 'برجر . فرايد تشيكن'
  },
];

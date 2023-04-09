import 'package:creative_task2/screens/widgets/categoory_card.dart';
import 'package:creative_task2/screens/widgets/city_section.dart';
import 'package:creative_task2/screens/widgets/header_title.dart';
import 'package:creative_task2/screens/widgets/may_like.dart';
import 'package:creative_task2/screens/widgets/most_orderd.dart';
import 'package:creative_task2/screens/widgets/reorder_section.dart';
import 'package:creative_task2/screens/widgets/search_cart_section.dart';
import 'package:creative_task2/screens/widgets/slider_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: const [
              CitySection(),
              SearchCartSection(),
              SliderSection(),
              HeaderTitle(title: 'الأقسام'),
              CategoryCard(),
              HeaderTitle(title: 'إعادة الطلب'),
              ReorderCard(),
              HeaderTitle(
                title: 'الأكثر طلبا',
                second: 'الكل',
              ),
              MostOrdered(),
              HeaderTitle(title: 'قد يعجبك'),
              MayLike()
            ],
          ),
        ),
      ),
    );
  }
}

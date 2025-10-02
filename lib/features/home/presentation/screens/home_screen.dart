import 'package:anime_live/core/utils/spacing.dart';
import 'package:anime_live/core/utils/styles.dart';
import 'package:anime_live/features/home/presentation/widgets/anime_card.dart';
import 'package:anime_live/features/home/presentation/widgets/cahracter_widget.dart';
import 'package:anime_live/features/home/presentation/widgets/top_menu.dart';
import 'package:anime_live/features/nav_bar/nav_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/Home.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 23),
                Text("Where Anime Comes Alive", style: Styles.font24PurpleW700),
                verticalSpace(24),
                TopMenu(),
                verticalSpace(20),
                AnimeCard(),
                verticalSpace(24),
                Text(
                  "Top Characters",
                  style: Styles.font12Black2W800.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                verticalSpace(24),
                CahracterWidget(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

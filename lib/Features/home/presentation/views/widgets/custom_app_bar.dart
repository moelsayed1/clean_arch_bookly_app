import 'package:bookly_app/Core/utils/app_router.dart';
import 'package:bookly_app/Core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.logo,
            height: 24,
          ),
          IconButton(onPressed: () {
            GoRouter.of(context).push(AppRouter.kSearchView);
          },
            icon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 24,
          ),
          ),
        ],
      ),
    );
  }
}
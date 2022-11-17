import 'package:all_build_companies/features/companies/data/models/comany_model.dart';
import 'package:all_build_companies/routes/mobile_app_router.dart';
import 'package:all_build_companies/theme/app_colors.dart';
import 'package:all_build_companies/theme/app_text_styles.dart';
import 'package:all_build_companies/widgets/favorite_button/favorite_button.dart';
import 'package:all_build_companies/widgets/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CompanyInfoCard extends StatelessWidget {
  const CompanyInfoCard({Key? key, required this.model}) : super(key: key);
  final CompanyModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.push(CompanyDetailScreenRoute(model: model)),
      child: Container(
        padding: const EdgeInsets.all(8),
        width: getWidth(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.colorB4BF19,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(model.image, height: 50),
                  Text(
                    model.name,
                    style: AppTextStyles.s20Wbold(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      FavoriteButton(),
                      SizedBox(width: 5),
                    ],
                  ),
                  const Text(
                    'Дата основания:',
                  ),
                  Text(model.dateFoundation, style: AppTextStyles.s16W500()),
                  const SizedBox(height: 15),
                  const Text(
                    'Реализовано проектов:',
                  ),
                  Text(model.buildings.toString(),
                      style: AppTextStyles.s16W500()),
                  RatingBar.builder(
                    itemSize: 20,
                    glowRadius: 1,
                    initialRating: 0,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

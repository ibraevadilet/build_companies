import 'package:all_build_companies/core/images/app_images.dart';
import 'package:all_build_companies/features/companies/data/company_lists_data_base/company_list.dart';
import 'package:all_build_companies/features/companies/data/models/comany_model.dart';
import 'package:all_build_companies/features/companies/presentation/companies/widgets/compani_info_card.dart';
import 'package:all_build_companies/widgets/custom_text_field.dart';
import 'package:all_build_companies/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CompaniesScreen extends StatelessWidget {
  const CompaniesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Строительные компании',
          style: TextStyle(color: AppColors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            CustomTextField(
              onChange: (String value) {},
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => CompanyInfoCard(
                  model: companyList[index],
                ),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
                itemCount: companyList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

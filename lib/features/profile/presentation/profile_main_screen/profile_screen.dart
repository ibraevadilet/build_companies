import 'package:all_build_companies/features/profile/presentation/profile_main_screen/widgets/row_buttom_widget.dart';
import 'package:all_build_companies/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Профиль', style: AppTextStyles.s32Wbold()),
              const SizedBox(height: 20),
              const CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 50,
              ),
              const SizedBox(height: 10),
              Text(
                "Sidikov Tolibzhon",
                style: AppTextStyles.s16W500(),
              ),
              const SizedBox(height: 10),
              Text(
                "sidikovtolibjon2000@gmail.com",
                style: AppTextStyles.s16W500(),
              ),
              const Divider(color: Colors.brown),
              const SizedBox(height: 10),
              RowButtom(
                name: "Смена языка",
                icon: Icons.language,
              ),
              const SizedBox(height: 20),
              RowButtom(
                name: "Смена темы",
                icon: Icons.catching_pokemon,
              ),
              const SizedBox(height: 20),
              RowButtom(
                name: "Калькулятор",
                icon: Icons.calculate,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

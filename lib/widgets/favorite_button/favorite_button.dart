import 'package:all_build_companies/widgets/favorite_button/favorite_cubit/favorite_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavoriteCubit(),
      child: BlocBuilder<FavoriteCubit, FavoriteState>(
        builder: (context, state) {
          return IconButton(
            onPressed: () {
              context.read<FavoriteCubit>().getFavorite(state.isFavorite);
            },
            icon:
                Icon(state.isFavorite ? Icons.favorite : Icons.favorite_border),
          );
        },
      ),
    );
  }
}

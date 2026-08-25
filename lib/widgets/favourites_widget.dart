import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/cubits/favourites_cubit/favourites_cubit.dart';
import 'package:test/cubits/favourites_cubit/favourites_states.dart';
import 'package:test/widgets/recommendtion_section_body.dart';

class FavouritesWidget extends StatelessWidget {
  const FavouritesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouritesCubit, FavouritesStates>(
      builder: (context, state) {
        if (state is FavouriteSuccess) {
          return RecommendtionSectionBody(
            items: context.read<FavouritesCubit>().items,
          );
        } else if (state is FavouriteFailure) {
          return Center(
            child: Text(
              'There is an error try it later',
              style: TextStyle(color: Colors.red),
            ),
          );
        }
        return SizedBox();
      },
    );
  }
}
/*
==  , is 
== check value 
is check type 
other is animal 
x is int
*/
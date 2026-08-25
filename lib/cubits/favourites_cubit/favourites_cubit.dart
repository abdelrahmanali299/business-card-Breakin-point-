import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/cubits/favourites_cubit/favourites_states.dart';
import 'package:test/data/item_model.dart';

class FavouritesCubit extends Cubit<FavouritesStates> {
  FavouritesCubit() : super(FavouriteLoading());

  List<ItemModel> items = [];
  void addFavourite({required ItemModel item}) {
    log('Add Favourite ============================');
    try {
      items.add(item);

      emit(FavouriteSuccess());
    } catch (e) {
      emit(FavouriteFailure());
    }
  }
}

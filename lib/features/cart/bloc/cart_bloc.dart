import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_example/data/cart_items.dart';
import 'package:flutter_bloc_example/features/home/models/home_product_data_model.dart';
import 'package:meta/meta.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartInitialEvent>(cartInitialEvent);
    on<CartRemoveFromCartEvent>(cartRemoveFromCartEvent);
  }

  FutureOr<void> cartInitialEvent(
      CartInitialEvent event, Emitter<CartState> emit) {
    emit(CartSuccessState(cartItems: cartItems));
  }

  FutureOr<void> cartRemoveFromCartEvent(
      CartRemoveFromCartEvent event, Emitter<CartState> emit) {
        // get your cart items
        // check is your product there in your cartItems - always true
        // run a function to remove that product model from the cartItems      
        // emit cartItem removedState 
      }
}

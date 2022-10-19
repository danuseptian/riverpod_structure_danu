import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';

class CartView extends ConsumerWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cart View'),
      ),
      body: Center(
        child: Lottie.asset('asset/lottie/cart.json', height: 300),
      ),
    );
  }
}

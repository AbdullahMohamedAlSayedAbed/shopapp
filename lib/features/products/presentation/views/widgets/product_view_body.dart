import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopapp/features/products/presentation/controllers/cubit/product_cubit.dart';
import 'package:shopapp/features/products/presentation/views/widgets/product_modal_progress_h_u_d.dart';

class ProductViewBody extends StatelessWidget {
  const ProductViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductSuccess) {
          return ProductModalProgressHUD(
            model: state.homeModel,
          );
        }
        if (state is ProductFailure) {
          return Center(child: Text(state.errMessage));
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}

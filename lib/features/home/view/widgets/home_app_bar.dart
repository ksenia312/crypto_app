import 'package:crypto_app/features/home/cubit/home_cubit.dart';
import 'package:crypto_app/features/home/cubit/home_state.dart';
import 'package:crypto_app/features/home/view/widgets/home_search.dart';
import 'package:crypto_app/shared/state/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  static const _indent = 16.0;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: kToolbarHeight + _indent * 3,
      title: BlocBuilder<HomeCubit, AsyncState<HomeAppState>>(
        builder: (context, state) {
          return HomeSearch(
            isEnabled: state is DataState,
            onChanged: context.read<HomeCubit>().filter,
          );
        },
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + _indent * 3);
}

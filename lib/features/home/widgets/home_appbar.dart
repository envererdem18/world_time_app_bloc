import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/helpers/debouncer.dart';
import '../bloc/home_bloc.dart';

class HomeAppBar extends AppBar {
  HomeAppBar({
    super.key,
    required BuildContext context,
  }) : super(
          title: const Text("World Time App"),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: Container(
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: TextFormField(
                onChanged: (value) {
                  Debouncer.call(() {
                    context.read<HomeBloc>().add(HomeEvent.filter(value));
                  });
                },
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(color: Colors.white, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(color: Colors.white, width: 2),
                  ),
                  hintText: "Type any location to filter results",
                  hintStyle: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white),
                ),
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.white),
                cursorColor: Colors.white,
              ),
            ),
          ),
        );
}

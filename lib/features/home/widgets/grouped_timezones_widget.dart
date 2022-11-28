import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:world_time_app_bloc/features/home/bloc/home_bloc.dart';

import '../../../domain/entities/timezone.dart';

class GroupedTimezonesWidget extends StatelessWidget {
  const GroupedTimezonesWidget({
    super.key,
    required this.timezones,
    this.filtered,
  });
  final List<Timezone> timezones;
  final List<Timezone>? filtered;

  @override
  Widget build(BuildContext context) {
    return GroupedListView<Timezone, String>(
      elements: filtered ?? timezones,
      groupBy: (item) => item.area.successOrNullable ?? 'area',
      groupHeaderBuilder: (element) => Container(
        height: 60,
        color: Colors.red,
        alignment: Alignment.center,
        child: Text(
          element.area.successOrNullable ?? 'Unknown Area',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 8,
              ),
        ),
      ),
      itemBuilder: (context, element) {
        return ListTile(
          title: Text(
            "${element.location.successOrNullable?.replaceAll("/", " - ")}",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          trailing: Icon(Icons.forward, color: Colors.grey.shade300),
          onTap: () {
            context.read<HomeBloc>().add(HomeEvent.goToDetail(element));
          },
        );
      },
    );
  }
}

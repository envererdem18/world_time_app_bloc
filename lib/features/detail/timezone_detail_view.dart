import 'package:flutter/material.dart';
import 'package:world_time_app_bloc/domain/entities/timezone_detail.dart';
import 'package:world_time_app_bloc/domain/helpers/int_x.dart';
import 'package:world_time_app_bloc/domain/helpers/string_x.dart';

class TimezoneDetailView extends StatelessWidget {
  const TimezoneDetailView({super.key, required this.detail});
  final TimezoneDetail detail;
  @override
  Widget build(BuildContext context) {
    final dateString = detail.datetime.successOrNullable!;
    final date = dateString.toDateTime;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${detail.timezone.successOrNullable?.replaceAll("/", " - ")}",
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${date.hour.twoDigit} : ${date.minute.twoDigit}",
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Text(
            "Date: ${date.day.twoDigit} - ${date.month.twoDigit} - ${date.year}",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 30),
          Text(
            "Week Number: ${detail.weekNumber.successOrNullable}",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 30),
          Text(
            "Abbrevation: ${detail.abbreviation.successOrNullable}",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}

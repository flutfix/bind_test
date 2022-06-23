import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

abstract class Converter {
  static String shortenDay({
    required BuildContext context,
    required DateTime date,
  }) {
    DateTime dateNow = DateTime.now();
    if (date.day == dateNow.day) {
      return AppLocalizations.of(context)!.today;
    } else if (date.day + 1 == dateNow.day) {
      return AppLocalizations.of(context)!.yesterday;
    }
    return DateFormat('E, MMM d').format(date);
  }
}

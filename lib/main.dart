import 'package:bind_test/common/styles/colors.dart';
import 'package:bind_test/common/styles/fonts.dart';
import 'package:bind_test/wallet/wallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(374, 720),
      builder: (context, widget) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData.light().copyWith(
            extensions: <ThemeExtension<dynamic>>[
              CustomColors.light,
              CustomTextStyle.light,
            ],
          ),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: const WalletPage(),
        );
      },
    );
  }
}

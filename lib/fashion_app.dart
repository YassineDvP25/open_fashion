import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/features/chekout/logic/cubit/checkout_cubit.dart';
import 'package:open__fashion__app/features/home/ui/screens/home_screen.dart';

class FashionApp extends StatelessWidget {
  const FashionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      child: MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),

        debugShowCheckedModeBanner: false,
        home: BlocProvider(
          create: (context) => CheckoutCubit(),
          child: HomeScreen(),
        ),
      ),
    );
  }
}

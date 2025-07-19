import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/core/components/text.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/core/theming/colors/app_colors.dart';
import 'package:open__fashion__app/features/home/ui/screens/home_screen.dart';

class BottomShetPaymentSucces extends StatefulWidget {
  const BottomShetPaymentSucces({super.key});

  @override
  State<BottomShetPaymentSucces> createState() => _PaymentSuccessDialogState();
}

class _PaymentSuccessDialogState extends State<BottomShetPaymentSucces> {
  int? selectedRating;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      // canPop: false,
      child: Padding(
        padding: const EdgeInsets.all(24.0).w,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            verticalSpace(8),
          CustomText(
            text: 'Payment Success'.toUpperCase(),
            color: AppColors.mainBlack,
                

              fontSize: 20,
                letterSpace: 2,
                fontWeight: FontWeight.bold
          ),
            verticalSpace(16),
            const Icon(
              Icons.check_circle_outline,
              size: 48,
              color: Color(0xFFB1866E),
            ),
            verticalSpace(16),
            const CustomText(text: ' Your payment was successful',
                color: AppColors.mainDarkGrey,
                fontSize: 16,
                fontWeight: FontWeight.w500),
            verticalSpace(4),
            const CustomText(
              text: 'Payment ID  15263541',
              color: AppColors.grayScaleLabel,
              fontSize: 13,
            ),
            const Divider(height: 32),
            const CustomText(
              text: 'Rate your experience',
              color: AppColors.mainDarkGrey,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            verticalSpace(12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                IconData icon;
                switch (index) {
                  case 0:
                    icon = Icons.sentiment_dissatisfied_outlined;
                    break;
                  case 1:
                    icon = Icons.sentiment_neutral_outlined;
                    break;
                  default:
                    icon = Icons.sentiment_very_satisfied_outlined;
                }

                return IconButton(
                  icon: Icon(
                    icon,
                    color:
                        selectedRating == index
                            ? const Color(0xFFB1866E)
                            : Colors.grey.shade400,
                    size: 32,
                  ),
                  onPressed: () {
                    setState(() {
                      selectedRating = index;
                    });
                  },
                );
              }),
            ),
            verticalSpace(24),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle rating submission
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                    child: CustomText(text: 'Submit',
                        color: Colors.white,
                        fontSize: 14,
                        letterSpace: 1.2),
                  ),
                ),
                horizantalSpace(12),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      // Navigate to home screen
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                        (route) => false,
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.black),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                    child: CustomText(text: 'Back To Home',
                        color: Colors.black,
                        fontSize: 14,
                        letterSpace: 1.2)
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

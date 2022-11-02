import 'package:flutter/material.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/recovery_password_second_step/components/body_recovery_password_second_step.dart';

class RecoveryPasswordSecondStep extends StatelessWidget {
  const RecoveryPasswordSecondStep({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: kBackGroundColor,
        body: BodyRecoveryPasswordSecondStep(),
        
      ),
    );
  }
}
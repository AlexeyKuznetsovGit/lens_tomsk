import 'package:flutter/material.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/recovery_password_first_step/components/body_recovery_password_first_step.dart';

class RecoveryPasswordFirstStep extends StatelessWidget {
  const RecoveryPasswordFirstStep({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: kBackGroundColor,
        body: BodyRecoveryPasswordFirstStep(),
       
      ),
    );
  }
}
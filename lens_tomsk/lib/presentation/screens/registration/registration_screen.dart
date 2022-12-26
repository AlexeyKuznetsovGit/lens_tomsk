import 'package:flutter/material.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/registration/components/body_registration.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: kBackGroundColor,
        body: BodyRegistration(),
        
      ),
    );
  }
}
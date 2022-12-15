import 'package:flutter/material.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/profile_editing/components/user_text_fileds.dart';

class ProfileEditing extends StatelessWidget {
  const ProfileEditing(
      {Key? key,
      required this.name,
      required this.email,
      required this.password})
      : super(key: key);
  final String name;
  final String email;
  final String password;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: kBackGroundColor,
        body: UserTextFields(
          name: name,
          email: email,
          password: password,
        ),
      ),
    );
  }
}

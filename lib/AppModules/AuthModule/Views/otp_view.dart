import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:gosportified/Utils/app_colors.dart';
import '../../../Widgets/my_button.dart';
import '../../../Widgets/my_form_field.dart';
import '../../../Widgets/my_text.dart';

class OtpView extends StatelessWidget {
  OtpView({super.key});
  bool _onEditing = true;
  String? _code;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                font: FontWeight.bold,
                text: 'Verify Code',
                color: const Color(0xff393939),
                fontSize: 28,
              ),
              const SizedBox(
                height: 15,
              ),
              MyText(
                text: 'Please enter the code we just sent to email',
                color: Colors.black45,
                fontSize: 15,
                maxlines: 2,
              ),
              MyText(
                text: '+971 303  ********',
                color: primaryLight,
                fontSize: 15,
                maxlines: 2,
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                  child: SvgPicture.asset(
                      height: 198, width: 188, 'assets/verificationIcon.svg')),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: VerificationCode(

                  fillColor:const Color(0xffF3F3F3),
                  underlineUnfocusedColor:const Color(0xffF3F3F3),
                  keyboardType: TextInputType.number,
                  underlineColor: Colors
                      .amber, // If this is null it will use primaryColor: Colors.red from Theme
                  length: 4,
                  cursorColor: Colors
                      .blue, // If this is null it will default to the ambient
                  margin: const EdgeInsets.all(12),
                  onCompleted: (String value) {},
                  onEditing: (bool value) {
                    if (!_onEditing) FocusScope.of(context).unfocus();
                  },
                ),
              ),
              const SizedBox(height:50,),
              Center(
                child: MyText(
                  font: FontWeight.bold,
                  text: 'Didn’t receive OTP?',
                  color: Colors.black54,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Center(
                child: MyText(
                  font: FontWeight.bold,
                  text: 'Resend code',
                  color: primaryLight,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              MyButton(onTap: () {}, text: 'Verify'),
            ],
          ),
        ),
      ),
    );
  }
}

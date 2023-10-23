import 'package:flutter/material.dart';
import 'package:to_do_llist_app/core/function/app_func.dart';
import 'package:to_do_llist_app/core/utils/app_router.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_button.dart';
import 'widgets/custom_text_form_filed.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SignUpViewBody(),
      ),
    );
  }
}

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  String myEmail = '';
  String myPassword = '';
  String username = '';
  final GlobalKey<FormState> _key = GlobalKey();
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              "Sign Up",
              style: Style.textStyle28.copyWith(color: kPrimaryColor),
            ),
            const Spacer(),
            Form(
              key: _key,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomTextFormFiled(
                    hint: "Username",
                    icon: Icons.person,
                    onSaved: (username) {
                      username = username!;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "this field is required";
                      } else if (value.contains(" ")) {
                        return "please enter a valid username";
                      }
                      return null;
                    },
                    autovalidateMode: autovalidateMode,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomTextFormFiled(
                    hint: "Email",
                    icon: Icons.email,
                    onSaved: (email) {
                      myEmail = email!;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "this field is required";
                      } else if (!value.contains("@gmail.com")) {
                        return "please enter a valid email address";
                      }
                      return null;
                    },
                    autovalidateMode: autovalidateMode,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomTextFormFiled(
                    hint: "Password",
                    icon: Icons.lock,
                    onSaved: (password) {
                      myPassword = password!;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "this field is required";
                      } else if (value.length < 4) {
                        return "the passowrd cannot be less than 4 characters";
                      } else if (value.length > 40) {
                        return "the passowrd cannot be more than 40 characters";
                      } else if (value.contains(" ")) {
                        return "the password must don't contain ' '";
                      }
                      return null;
                    },
                    isPassword: true,
                    autovalidateMode: autovalidateMode,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                ],
              ),
            ),
            CustomButton(
              title: "Sign Up",
              onPressed: () {
                if (_key.currentState!.validate()) {
                  AppFunction.navigatToNextScreen(
                      AppRouter.homeRouter, context);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "You have an account ? ",
                  style: Style.textStyle16,
                ),
                CustomTextButton(
                  onPressed: () {
                    AppFunction.navigatToNextScreen(
                        AppRouter.signInViewRouter, context);
                  },
                  title: "Sign In",
                  style: Style.textStyle16.copyWith(
                      color: kPrimaryColor, fontWeight: FontWeight.w500),
                )
              ],
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}

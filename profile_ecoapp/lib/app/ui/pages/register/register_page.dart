import 'package:flutter/material.dart';
import 'package:flutter_meedu/state.dart';
import 'package:profile_ecoapp/app/ui/gobal_widgets/custom_input_field.dart';
import 'package:profile_ecoapp/app/ui/pages/register/controller/register_controller.dart';
import 'package:profile_ecoapp/app/ui/pages/register/controller/register_state.dart';
import 'package:profile_ecoapp/app/utils/email_validator.dart';
import 'package:profile_ecoapp/app/utils/name_validator.dart';
import 'package:profile_ecoapp/app/utils/number_validator.dart';

import 'package:flutter_meedu/meedu.dart';

final registerProvaider = StateProvider<RegisterController, RegisterState>(
  (_) => RegisterController(),
);

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderListener<RegisterController>(
      provider: registerProvaider,
      builder: (_, controller) {
        return Scaffold(
          appBar: AppBar(),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: SingleChildScrollView(
              child: Container(
                color: Colors.transparent,
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    CustomInputField(
                      label: "Name",
                      onChanged: controller.onNameChanged,
                      validator: (text) {
                        if (text == null) return null;
                        return isValidName(text) ? null : "Invalid name";
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomInputField(
                      label: "Last Name",
                      onChanged: controller.onLastNameChanged,
                      validator: (text) {
                        if (text == null) return null;
                        return isValidName(text) ? null : "Invalid Last name";
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomInputField(
                      label: "Age",
                      onChanged: controller.onAgeChanged,
                      validator: (text) {
                        if (text == null) return null;
                        return isValidNumber(text) ? null : "Invalid Age";
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomInputField(
                      label: "Weight",
                      onChanged: controller.onPesoChanged,
                      validator: (text) {
                        if (text == null) return null;
                        return isValidNumber(text) ? null : "Invalid Weight";
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomInputField(
                      label: "Height",
                      onChanged: controller.onAlturaChanged,
                      validator: (text) {
                        if (text == null) return null;
                        return isValidNumber(text) ? null : "Invalid Height";
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomInputField(
                      label: "email",
                      inputType: TextInputType.emailAddress,
                      onChanged: controller.onEmailChanged,
                      validator: (text) {
                        if (text == null) return null;
                        return isValidEmail(text) ? null : "Invalid email";
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomInputField(
                      label: "password",
                      onChanged: controller.onPasswordChanged,
                      isPassword: true,
                      validator: (text) {
                        if (text == null) return null;
                        if (text.trim().length >= 6) {
                          return null;
                        }
                        return "Invalid password";
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Consumer(builder: (_, watch, __) {
                      watch(
                        registerProvaider.select(
                          (_) => _.password,
                        ),
                      );
                      return CustomInputField(
                        label: "Verification password",
                        onChanged: controller.onVpasswordChanged,
                        isPassword: true,
                        validator: (text) {
                          if (text == null) return null;
                          if (controller.state.password != text) {
                            return "Password don't match";
                          }
                          if (text.trim().length >= 6) {
                            return null;
                          }

                          return "Invalid password";
                        },
                      );
                    }),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

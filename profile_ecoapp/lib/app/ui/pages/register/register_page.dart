import 'package:flutter/material.dart';
import 'package:profile_ecoapp/app/ui/gobal_widgets/custom_input_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  onChanged: (text) {},
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomInputField(
                  label: "Last Name",
                  onChanged: (text) {},
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomInputField(
                  label: "Edad",
                  onChanged: (text) {},
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomInputField(
                  label: "peso",
                  onChanged: (text) {},
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomInputField(
                  label: "altura",
                  onChanged: (text) {},
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomInputField(
                  label: "email",
                  inputType: TextInputType.emailAddress,
                  onChanged: (text) {},
                  validator: (text) {
                    if (text == null) return null;
                    if (text.contains("@")) {
                      return null;
                    }
                    return "Invalid Email";
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomInputField(
                  label: "password",
                  onChanged: (text) {},
                  isPassword: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomInputField(
                  label: "Verification password",
                  onChanged: (text) {},
                  isPassword: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

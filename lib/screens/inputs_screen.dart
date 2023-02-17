import 'package:flutter/material.dart';

import '../widgets/custom_input_field.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Geralt',
      'last_name': 'of Rivia',
      'email': 'geraltdarddy@gmail.com',
      'password': 'Roachiscool',
      'role': 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs and Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [

                CustomInputField(labelText: 'Name', hintText: 'UserName', formProperty: 'first_name', formValues: formValues),
                const SizedBox(height: 30),

                CustomInputField(labelText: 'Last Name', hintText: 'User Last Name', formProperty: 'last_name', formValues: formValues,),
                const SizedBox(height: 30),

                CustomInputField(labelText: 'Email', hintText: 'User Email', keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
                const SizedBox(height: 30),

                CustomInputField(labelText: 'Password', hintText: 'User Password', obscureText: true, formProperty: 'password', formValues: formValues,),
                const SizedBox(height: 30),

                DropdownButtonFormField<String>(
                    items: const [
                      DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                      DropdownMenuItem(value: 'SuperUser', child: Text('SuperUser')),
                      DropdownMenuItem(value: 'Developer', child: Text('Developer')),
                      DropdownMenuItem(value: 'Jr. Developer', child: Text('Jr. Developer')),
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues['role'] = value ?? 'Admin';
                    }
                ),

                ElevatedButton(
                    onPressed: () {

                      FocusScope.of(context).requestFocus(FocusNode());

                      if ( !myFormKey.currentState!.validate() ) {
                        print('Invalid Form');
                        return;
                      }

                      // TODO IMPRIMIR VALORES DEL FORMULARIO
                      print(formValues);
                    },
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Save'))
                    )
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}
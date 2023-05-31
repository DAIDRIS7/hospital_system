import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital/features/auth/controller/bloc/cubit/cubit.dart';
import 'package:hospital/features/auth/controller/bloc/cubit/states.dart';
import 'package:hospital/features/home/view/view.dart';

class LogInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AuthCubit, AuthState>(
          bloc: AuthCubit(Success()),
          builder: (context, state) {
            if (state is Success) {
              return _bodyWidget(context);
            } else {
              return CircularProgressIndicator();
            }
          }),
    );
  }
}

_bodyWidget(context) {
  return SafeArea(
    child: Container(
      margin: EdgeInsets.all(7 + 7 + 7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/logo/logo2.png',
              ),
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            'Welcome back',
          ),
          SizedBox(
            height: 7 + 7 + 7,
          ),
          _textFormWidget(
            hintText: 'Phone Number ',
            prefixIcon: Icon(Icons.phone_iphone),
          ),
          SizedBox(
            height: 7,
          ),
          _textFormWidget(
            hintText: 'Password',
            prefixIcon: Icon(
              Icons.lock,
            ),
            suffixIcon: Icon(
              Icons.visibility,
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            'Forget password?',
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Homepage(),
                ),
              );
            },
            child: Text(
              'Sign In ',
            ),
          ),
        ],
      ),
    ),
  );
}

_textFormWidget({String? hintText, Widget? prefixIcon, Widget? suffixIcon}) {
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          7 + 7,
        ),
      ),
      hintText: hintText,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    ),
  );
}

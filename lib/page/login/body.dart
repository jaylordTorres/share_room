import 'package:flutter/material.dart';
import 'package:umpisa_room/core.dart';

const _username = 'testadmin@umpisa.co';
const _password = 'password';

class Body extends StatelessWidget {
  final bool isLoading = false;
  final String error = '';
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                UiLogo(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 24),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: TextFormField(
                    // onFieldSubmitted: onUsername,
                    initialValue: _username,
                    decoration: InputDecoration(labelText: 'Username:'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: TextFormField(
                    // onFieldSubmitted: onPassword,
                    initialValue: _password,
                    decoration: InputDecoration(labelText: 'Password:'),
                  ),
                ),
                isLoading
                    ? Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: CircularProgressIndicator())
                    : Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          error,
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 15,
                          ),
                        ),
                      ),
              ],
            ),
          ),
          UiButtonRound(
            // disabled: isLoading,
            // onPressed: onLogin,
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushReplacementNamed(AppRoutes.dashboard);
            },
            title: 'Login',
            // size: StringSizes.large,
          )
        ]);
  }
}

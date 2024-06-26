// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shrine/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _phoneController = TextEditingController();
  // TODO: Add text editing controllers (101)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background.png"), fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            children: <Widget>[
              const SizedBox(),
              Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 70,
                    child: Image.asset(
                      'assets/swiftlogo.png',
                      fit: BoxFit.contain,
                      width: 150,
                      height: 150,
                    ),
                  ),

                  const SizedBox(height: 16.0),
                  // const Text('SwiftCoins'),
                ],
              ),
              const SizedBox(height: 200.0),
              // [Name]
              TextField(
                controller: _phoneController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  filled: true,
                  labelText: 'Phone Number',
                ),
              ),

              OverflowBar(
                alignment: MainAxisAlignment.end,
                // TODO: Add a beveled rectangular border to CANCEL (103)
                children: <Widget>[
                  TextButton(
                    child: const Text('CANCEL'),
                    onPressed: () {
                      // TODO: Clear the text fields (101)
                    },
                  ),
                  // TODO: Add an elevation to NEXT (103)
                  // TODO: Add a beveled rectangular border to NEXT (103)
                  ElevatedButton(
                    child: const Text('NEXT'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EnterPin()),
                      );
                      // TODO: Show the next page (101)
                    },
                  ),
                  // TODO: Add buttons (101)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// Enter PIN Widget

class EnterPin extends StatefulWidget {
  const EnterPin({Key? key}) : super(key: key);

  @override
  _EnterPinState createState() => _EnterPinState();
}

class _EnterPinState extends State<EnterPin> {
  final _pinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background.png"), fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            children: <Widget>[
              const SizedBox(),
              Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 70,
                    child: Image.asset(
                      'assets/swiftlogo.png',
                      fit: BoxFit.contain,
                      width: 150,
                      height: 150,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 200.0),
              // [Name]
              TextField(
                controller: _pinController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  filled: true,
                  labelText: 'Enter your PIN',
                ),
              ),

              OverflowBar(
                alignment: MainAxisAlignment.end,
                // TODO: Add a beveled rectangular border to CANCEL (103)
                children: <Widget>[
                  TextButton(
                    child: const Text('CANCEL'),
                    onPressed: () {
                     
                       _pinController.clear();
                    },
                  ),
                  // TODO: Add an elevation to NEXT (103)
                  // TODO: Add a beveled rectangular border to NEXT (103)
                  ElevatedButton(
                    child: const Text('Sign In'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                  ),
                  // TODO: Add buttons (101)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

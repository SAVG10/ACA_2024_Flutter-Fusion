import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  RegistrationPageState createState() => RegistrationPageState();
}

class RegistrationPageState extends State<RegistrationPage> {
  void _nextPage() async {
    Navigator.pushNamed(context, '/login');
  }

  void _submit() {
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; 
    var height = size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body:
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/Sign up-rafiki.png",
                      height: height/3,
                      width: double.infinity,
                    ),
                    const Text("Register Here!",
                    style: TextStyle(
                      fontFamily: "OpenSans-VariableFont_wdth,wght",
                      color: Color.fromARGB(221, 48, 124, 244),
                      fontSize: 32,
                      fontWeight: FontWeight.w800
                    ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text("Register Now for Our Chat App App"),
                     SizedBox(
                      height: height/30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                          ),
                          color: Colors.grey[100],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: const TextField(
                        
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email ID',
                            contentPadding: EdgeInsets.all(10)),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                          ),
                          color: Colors.grey[100],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Full Name',
                            contentPadding: EdgeInsets.all(10)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black12,
                                ),
                                color: Colors.grey[100],
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10))),
                            child: const TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Age',
                                  contentPadding: EdgeInsets.all(10)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black12,
                                ),
                                color: Colors.grey[100],
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10))),
                            child: const TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Phone',
                                  contentPadding: EdgeInsets.all(10)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    
                    SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueAccent,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                              onPressed: _nextPage,
                              child: const Text('Register'),
                            ),
                    ),
                    // Form(
                    //   key: _formKey,
                    //   child: Column(
                    //       children: [
                    //       TextFormField(
                    //         controller: _employeeIdController,
                    //         decoration: const InputDecoration(labelText: 'Employee ID'),
                    //         validator: (value) {
                    //           if (value == null || value.isEmpty) {
                    //             return 'Please enter your Employee ID';
                    //           }
                    //           return null;
                    //         },
                    //       ),
                    //       SizedBox(
                    //         height: 10,
                    //       ),
                    //       Row(
                    //         children: [
                    //           TextFormField(
                    //             controller: _nameController,
                    //             decoration: const InputDecoration(
                    //               labelText: 'First Name',
                    //                border: OutlineInputBorder(
                    //                 borderRadius: BorderRadius.all(Radius.circular(10))
                    //                )
                    //               ),
                    //             validator: (value) {
                    //               if (value == null || value.isEmpty) {
                    //                 return 'Please enter your Name';
                    //               }
                    //               return null;
                    //             },
                    //           ),
                    //           TextFormField(
                    //             // controller: _nameController,
                    //             decoration: const InputDecoration(
                    //               labelText: 'First Name',
                    //                border: OutlineInputBorder(
                    //                 borderRadius: BorderRadius.all(Radius.circular(10))
                    //                )
                    //               ),
                    //             validator: (value) {
                    //               if (value == null || value.isEmpty) {
                    //                 return 'Please enter your Name';
                    //               }
                    //               return null;
                    //             },
                    //           ),
                    //         ],
                    //       ),
                    //       SizedBox(
                    //         height: 10,
                    //       ),
                    //       TextFormField(
                    //         controller: _ageController,
                    //         decoration: const InputDecoration(labelText: 'Age'),
                    //         validator: (value) {
                    //           if (value == null || value.isEmpty) {
                    //             return 'Please enter your Age';
                    //           }
                    //           return null;
                    //         },
                    //       ),
                    //       TextFormField(
                    //         controller: _positionController,
                    //         decoration: const InputDecoration(labelText: 'Position'),
                    //       ),
                    //       TextFormField(
                    //         controller: _bloodGroupController,
                    //         decoration: const InputDecoration(labelText: 'Blood Group'),
                    //       ),
                    //       const SizedBox(height: 24),
                    //       ElevatedButton(
                    //         onPressed: _nextPage,
                    //         child: const Text('Next'),
                    //       ),
                    //     ],
                      
                    //     )
                        
                      
                    //   ),
                            
                            
                      
                  ],
                ),
              ),
            ),
          ),
    );
  }
}
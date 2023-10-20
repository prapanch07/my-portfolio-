import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/core/firestore.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/custom_snackbar.dart';
import 'package:portfolio/widgets/custom_text_button.dart';
import 'package:portfolio/widgets/custom_text_field.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({super.key});

  @override
  State<ContactMe> createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  bool ishovering = false;

  bool emailvalidation(String email) {
    final bool emailValid = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(email);
    if (emailValid != true) {
      customSnackBar(context, 'email is badly formated');
    }
    return emailValid;
  }

  bool mobilevalidation(String phone) {
    final int l = phone.length;
    final bool mobilevalid = l == 10 ? true : false;

    if (mobilevalid == false) {
      customSnackBar(context, 'enter a valid phone number');
    }
    return mobilevalid;
  }

  @override
  Widget build(BuildContext context) {
    final _namecontroller = TextEditingController();
    final _emailcontroller = TextEditingController();
    final _mobilenumbercontroller = TextEditingController();
    final _descriptioncontroller = TextEditingController();

    final screensize = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        Container(
          height: screensize.width < mobilewidth ? 700 : 700,
          width: 1000,
          decoration: BoxDecoration(
            color: bluecontainer,
            border: Border.all(color: cyanbordercolor, width: 2),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Contact Me',
                      style: GoogleFonts.martianMono(
                        color: whitecolor,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),

                screensize.width < webwidth
                    ? SizedBox()
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: SizedBox(
                              width: 350,
                              child: CustomTextField(
                                lines: 1,
                                controller: _namecontroller,
                                hinttext: 'First Name',
                                keyboardtype: TextInputType.name,
                                keyboardaction: TextInputAction.next,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40, left: 40),
                            child: SizedBox(
                              width: 350,
                              child: CustomTextField(
                                lines: 1,
                                controller: _mobilenumbercontroller,
                                hinttext: 'Phone no',
                                keyboardtype: TextInputType.number,
                                keyboardaction: TextInputAction.next,
                              ),
                            ),
                          ),
                        ],
                      ),
                screensize.width < webwidth
                    ? Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: SizedBox(
                          width: 740,
                          child: CustomTextField(
                            lines: 1,
                            controller: _namecontroller,
                            hinttext: 'First Name',
                            keyboardtype: TextInputType.name,
                            keyboardaction: TextInputAction.next,
                          ),
                        ),
                      )
                    : const SizedBox(),
                screensize.width < webwidth
                    ? Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                        ),
                        child: SizedBox(
                          width: 740,
                          child: CustomTextField(
                            lines: 1,
                            controller: _mobilenumbercontroller,
                            hinttext: 'Phone no',
                            keyboardtype: TextInputType.number,
                            keyboardaction: TextInputAction.next,
                          ),
                        ),
                      )
                    : const SizedBox(),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    width: 740,
                    child: CustomTextField(
                      lines: 1,
                      controller: _emailcontroller,
                      hinttext: 'Email',
                      keyboardtype: TextInputType.emailAddress,
                      keyboardaction: TextInputAction.next,
                    ),
                  ),
                ),

                // radio buttons why did reached freelance doubt collaborate

                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    width: 740,
                    child: CustomTextField(
                      lines: 6,
                      controller: _descriptioncontroller,
                      hinttext: 'Description',
                      keyboardtype: TextInputType.multiline,
                      keyboardaction: TextInputAction.newline,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 0,
                  ),
                  child: CustomtextButton(
                    function: () async {
                      try {
                        if (_namecontroller.text.isEmpty ||
                            _emailcontroller.text.isEmpty ||
                            _mobilenumbercontroller.text.isEmpty ||
                            _descriptioncontroller.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('all fields are required'),
                            ),
                          );
                        } else {
                          final mobilevalid = mobilevalidation(
                            _mobilenumbercontroller.text,
                          );
                          final emailValid = emailvalidation(
                            _emailcontroller.text,
                          );

                          if (emailValid == true && mobilevalid == true) {
                            final String res = await firestore().uploadmessage(
                              name: _namecontroller.text,
                              email: _emailcontroller.text,
                              phone: _mobilenumbercontroller.text,
                              description: _descriptioncontroller.text,
                            );

                            _namecontroller.text = '';
                            _emailcontroller.text = '';
                            _mobilenumbercontroller.text = '';
                            _descriptioncontroller.text = '';

                            if (res == 'success') {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(res),
                                ),
                              );
                              Navigator.of(context).pop();
                            }
                          }
                        }
                      } catch (e) {
                        bool formaterror = e.toString().contains(
                              'FormatException:',
                            );
                        customSnackBar(
                          context,
                          formaterror ? 'invalid mobile number ' : e.toString(),
                        );
                      }
                    },
                    height: 50,
                    width: 740,
                    radius: 15,
                    textsize: 15,
                    color: cyanbordercolor,
                    textcolor: cyanbordercolor,
                    text: 'Submit',
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 8,
          right: 15,
          child: IconButton(
            alignment: Alignment.center,
            hoverColor: violetcolor,
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.close_rounded,
              color: cyanbordercolor,
            ),
          ),
        )
      ],
    );
  }
}

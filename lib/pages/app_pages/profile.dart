import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:supabase_auth/utilities/dimensions.dart';
import 'package:supabase_auth/utilities/profile_page_richtext.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Stack(alignment: Alignment.center, children: [
            Container(
                margin: EdgeInsets.only(top: Dimensions(context).height(50)),
                width: Dimensions(context).width(85),
                height: Dimensions(context).height(22),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.18),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const SingleChildScrollView(
                  padding: EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 10.0),
                  child: ProfileRichText(),
                )),
            Positioned(
              bottom: 20,
              right: 10,
              child: SizedBox(
                height: 35,
                width: 100,
                child: FloatingActionButton.extended(
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                    backgroundColor: const Color(0xFFFA2A55),
                    label: const Text('Edit'),
                    foregroundColor: Colors.white),
              ),
            ),
            Container(
                margin: EdgeInsets.only(bottom: Dimensions(context).height(20)),
                width: Dimensions(context).width(85),
                height: Dimensions(context).height(55),
                decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(15),
                    border:
                        Border.all(color: const Color(0xFFFA2A55), width: 1.5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      )
                    ]),
                child: Image.asset('./assets/images/muneeb1.png'), ),
          ]),
        ));
  }
}

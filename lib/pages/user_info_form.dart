import 'package:flutter/material.dart';
import 'package:supabase_auth/components/my_scaffold.dart';
import 'package:supabase_auth/utils/colors.dart';

class UserForm extends StatefulWidget {
  const UserForm({super.key});

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: AppBar(
        title: Text(
          "Add your basic details below",
          style: TextStyle(color: AppColors.grey),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Text("UserForms"),
        ),
      ),
    );
  }
}

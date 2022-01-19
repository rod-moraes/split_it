import 'package:flutter/material.dart';
import '/core/core.dart';
import '/domain/login/model/user_model.dart';

class AppBarHomeWidget extends PreferredSize {
  String capitalize(String s) => s[0].toUpperCase() + s.substring(1);
  final UserModel user;
  final VoidCallback onTap;
  AppBarHomeWidget({
    Key? key,
    required this.user,
    required this.onTap,
  }) : super(
          key: key,
          preferredSize: const Size.fromHeight(244),
          child: SingleChildScrollView(
            child: SizedBox(
              height: 244,
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: AppTheme.gradients.background),
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      height: 244,
                      width: double.maxFinite,
                      child: Column(
                        children: [
                          ListTile(
                            contentPadding: const EdgeInsets.only(
                                left: 8.0, right: 8.0, top: 65),
                            title: Text(
                              user.name.split(" ")[0][0].toUpperCase() +
                                  user.name
                                      .split(" ")[0]
                                      .substring(1)
                                      .toLowerCase(),
                              style: AppTheme.textStyles.appBarTitleGradient,
                            ),
                            leading: Container(
                              width: 56,
                              height: 56,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: NetworkImage(user.photoUrl),
                                ),
                              ),
                            ),
                            trailing: Material(
                              color: Colors.transparent,
                              child: Container(
                                width: 48,
                                height: 56,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: AppTheme.colors.borderGradient,
                                  ),
                                ),
                                child: IconButton(
                                  onPressed: onTap,
                                  icon: Icon(
                                    Icons.add,
                                    color: AppTheme.colors.iconGradient,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(alignment: const Alignment(0, 1), child: Container()),
                ],
              ),
            ),
          ),
        );
}

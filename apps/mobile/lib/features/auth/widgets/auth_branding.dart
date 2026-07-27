import 'package:flutter/material.dart';

import '../../../core/constants/app_assets.dart';

class AuthBranding extends StatelessWidget {
  const AuthBranding({super.key});

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return Column(
      children: [

        Text(
          'EduCore',
          style: theme.textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.w800,
            letterSpacing: 1,
          ),
        ),

        const SizedBox(height: 20),


        Container(
          width: double.infinity,

          padding: const EdgeInsets.all(24),

          decoration: BoxDecoration(

            gradient: LinearGradient(
              colors: [
                theme.colorScheme.primary,
                theme.colorScheme.primary.withOpacity(.75),
              ],

              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),

            borderRadius: BorderRadius.circular(32),

            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.primary.withOpacity(.25),

                blurRadius: 30,

                offset: const Offset(0,15),
              ),
            ],
          ),


          child: Column(

            children: [

              Container(
                height: 140,
                width: 140,

                padding: const EdgeInsets.all(14),

                decoration: BoxDecoration(

                  color: Colors.white,

                  borderRadius: BorderRadius.circular(30),
                ),


                child: Image.asset(
                  AppAssets.companyLogo,

                  fit: BoxFit.contain,
                ),
              ),


              const SizedBox(height: 20),


              const Text(
                'Business Management',

                style: TextStyle(

                  color: Colors.white,

                  fontSize: 20,

                  fontWeight: FontWeight.bold,
                ),
              ),


              const SizedBox(height: 8),


              const Text(
                'Smart solutions for your business',

                style: TextStyle(

                  color: Colors.white70,

                  fontSize: 14,
                ),
              ),



              const SizedBox(height: 28),



              Container(

                height: 1,

                color: Colors.white24,
              ),


              const SizedBox(height: 25),



              Row(

                mainAxisAlignment:
                    MainAxisAlignment.center,

                children: [

                  Container(

                    height: 75,

                    width: 75,


                    padding:
                        const EdgeInsets.all(10),


                    decoration: BoxDecoration(

                      color: Colors.white,

                      shape: BoxShape.circle,
                    ),


                    child: Image.asset(
                      AppAssets.schoolLogo,

                      fit: BoxFit.contain,
                    ),
                  ),


                  const SizedBox(width: 15),


                  const Column(

                    crossAxisAlignment:
                        CrossAxisAlignment.start,

                    children: [

                      Text(

                        'School Platform',

                        style: TextStyle(

                          color: Colors.white,

                          fontSize: 17,

                          fontWeight:
                              FontWeight.bold,
                        ),
                      ),


                      SizedBox(height:5),


                      Text(

                        'Education Management',

                        style: TextStyle(

                          color: Colors.white70,

                          fontSize: 13,
                        ),
                      ),
                    ],
                  )
                ],
              )

            ],
          ),
        ),

        const SizedBox(height: 25),
      ],
    );
  }
}
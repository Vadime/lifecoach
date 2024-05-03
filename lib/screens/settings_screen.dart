import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'
    show FontAwesomeIcons;
import 'package:lifecoach/screens/about_screen.dart';
import 'package:lifecoach/screens/change_password_screen.dart';
import 'package:lifecoach/screens/feedback_screen.dart';
import 'package:lifecoach/screens/goals_screen.dart';
import 'package:lifecoach/screens/privacy_screen.dart';
import 'package:lifecoach/screens/terms_screen.dart';
import 'package:widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      title: "Settings",
      body: ScrollViewWidget(
        children: [
          TextWidget.bodyLarge(
            context,
            'Theme',
          ),
          const SizedBox(height: 10),
          ThemeSelectionComponent(
            controller: ThemeController.of(context),
          ),
          const SizedBox(height: 20),
          TextWidget.bodyLarge(
            context,
            'Profile',
          ),
          const SizedBox(height: 10),
          CardWidget(
            children: [
              ListTileWidget(
                title: 'Change Goals',
                trailing: const Icon(
                  Icons.trending_up_rounded,
                  color: Colors.blue,
                ),
                onTap: () {
                  Navigation.push(
                    widget: const GoalsScreen(),
                  );
                },
              ),
              ListTileWidget(
                title: 'Change Password',
                trailing: const Icon(
                  Icons.password_rounded,
                ),
                onTap: () {
                  Navigation.push(
                    widget: const ChangePasswordScreen(),
                  );
                },
              ),
              ListTileWidget(
                title: 'Logout',
                trailing: const Icon(
                  Icons.logout_rounded,
                  color: Colors.orange,
                ),
                onTap: () => AuthenticationController().logout(),
              ),
            ],
          ),
          const SizedBox(height: 20),
          TextWidget.bodyLarge(
            context,
            'Other',
          ),
          const SizedBox(height: 10),
          CardWidget(
            children: [
              ListTileWidget(
                title: 'Feedback',
                trailing: const Icon(
                  Icons.feedback_outlined,
                ),
                onTap: () => Navigation.push(
                  widget: const FeedbackScreen(),
                ),
              ),
              ListTileWidget(
                title: 'Support',
                trailing: const Icon(
                  Icons.help_outline_rounded,
                  color: Colors.yellow,
                ),
                onTap: () {
                  UrlLauncher.launchBrowser("lifecoach.com/help_center");
                },
              ),
              ListTileWidget(
                title: 'Delete Account',
                trailing: Icon(
                  Icons.delete_outline_rounded,
                  color: context.config.errorColor,
                ),
                onTap: () => AuthenticationController().logout(),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const BrandingWidget(),
        ],
      ),
    );
  }
}

class BrandingWidget extends StatelessWidget {
  const BrandingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FooterWidget(
      socials: [
        IconButtonWidget(
          FontAwesomeIcons.instagram,
          onPressed: () {
            UrlLauncher.launchBrowser('instagram.com');
          },
          foregroundColor: Colors.pink,
        ),
        IconButtonWidget(
          FontAwesomeIcons.twitter,
          onPressed: () {
            UrlLauncher.launchBrowser('twitter.com');
          },
          foregroundColor: Colors.blue,
        ),
      ],
      buttons: [
        TextButtonWidget(
          'About us',
          onPressed: () => Navigation.push(widget: const AboutScreen()),
        ),
        TextButtonWidget(
          'Contact us',
          onPressed: () {
            UrlLauncher.launchEmail(
              'traumteam@email.de',
              'Angelegenheit',
            );
          },
        ),
        TextButtonWidget(
          'Privacy Policy',
          onPressed: () {
            Navigation.push(widget: const PrivacyScreen());
          },
        ),
        TextButtonWidget(
          'Terms of Service',
          onPressed: () {
            Navigation.push(widget: const TermsScreen());
          },
        ),
      ],
    );
  }
}

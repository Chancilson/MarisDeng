import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:legende/widgets/container_with_corner.dart';
import 'package:legende/widgets/text_with_tap.dart';
import 'package:legende/widgets/welcome_video_background.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          WelcomeVideoBackground(),
          _buildOverlay(context),
          _buildContent(context),
        ],
      ),
    );
  }

  Widget _buildOverlay(BuildContext context) {
    return ContainerCorner(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.black.withAlpha(70),
    );
  }

  Widget _buildContent(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildLogo(context),
          _buildLoginButtons(context),
        ],
      ),
    );
  }

  Widget _buildLogo(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Image.asset(
        "assets/images/ic_logo.png",
        height: MediaQuery.of(context).size.width / 2.7,
        width: MediaQuery.of(context).size.width / 2.7,
      ),
    );
  }

  Widget _buildLoginButtons(BuildContext context) {
    return Column(
      children: [
        _buildGoogleButton(),
        _buildMoreMethods(context),
        _buildTermsCheckbox(),
        _buildTermsLinks(),
      ],
    );
  }

  Widget _buildGoogleButton() {
    return ContainerCorner(
      height: 48,
      marginLeft: 50,
      marginRight: 50,
      color: Colors.white,
      borderRadius: 50,
      marginBottom: 10,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 25),
            child: SvgPicture.asset(
              "assets/svg/ic_google_logo.svg",
              height: 25,
              width: 25,
            ),
          ),
          TextWithTap(
            "Connect with Google",
            fontSize: 15,
            fontWeight: FontWeight.w900,
            color: Colors.blueAccent,
          ),
        ],
      ),
    );
  }

  Widget _buildMoreMethods(BuildContext context) {
    return Column(
      children: [
        TextWithTap(
          "More Login Methods",
          fontSize: 9,
          color: Colors.grey.withAlpha(80),
          marginBottom: 10,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildPhoneButton(),
          ],
        ),
        const SizedBox(height: 30),
      ],
    );
  }

  Widget _buildPhoneButton() {
    return ContainerCorner(
      color: Colors.white,
      height: 40,
      width: 40,
      borderRadius: 50,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(
          "assets/svg/ic_phone_login.svg",
          height: 25,
          width: 25,
        ),
      ),
    );
  }

  Widget _buildTermsCheckbox() {
    bool toggleState = true;
    return TextButton(
      onPressed: () {
        //handle toggle state
        toggleState = !toggleState;
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            toggleState
                ? Icons.check_circle
                : Icons.circle_outlined,
            color: toggleState
                ? Colors.blueAccent
                : Colors.white,
            size: 14,
          ),
          TextWithTap(
            "By using MarisDeng, you agree to the",
            color: Colors.white,
            fontSize: 11,
            marginLeft: 5,
          ),
        ],
      ),
    );
  }

  Widget _buildTermsLinks() {
    return ContainerCorner(
      marginLeft: 20,
      marginRight: 20,
      marginBottom: 40,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            _buildLinkSpan(
              "Terms of Service",
            ),
            TextSpan(
              text: "and",
              style: const TextStyle(color: Colors.white, fontSize: 11),
            ),
            _buildLinkSpan(
              "Privacy Policy",
            ),
          ],
        ),
      ),
    );
  }

  TextSpan _buildLinkSpan(String text) {
    return TextSpan(
      text: text,
      style: const TextStyle(
        fontSize: 11,
        color: Colors.lightBlueAccent,
        decoration: TextDecoration.underline,
      ),
    );
  }

}

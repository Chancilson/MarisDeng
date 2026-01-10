// lib/widgets/welcome_video_background.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../login_controller.dart';

class WelcomeVideoBackground extends StatelessWidget {
  const WelcomeVideoBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LoginController>();

    return _buildBackgroundVideo(controller);
  }

  Widget _buildBackgroundVideo(LoginController controller) {
    return Obx(() {
      if (!controller.isVideoReady) {
        return const SizedBox.shrink();
      }

      return Positioned.fill(
        child: AspectRatio(
          aspectRatio: controller.videoAspectRatio.value,
          child: VideoPlayer(controller.videoController),
        ),
      );
    });
  }
}
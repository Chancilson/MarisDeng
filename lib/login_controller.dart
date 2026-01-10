// lib/controllers/welcome_video_controller.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class LoginController extends GetxController {
  static const String videoAssetPath = 'assets/video/welcome_flash_bg.mp4';

  late VideoPlayerController _videoController;
  final RxBool _isVideoReady = false.obs;
  final RxBool _isVideoPlaying = false.obs;

  VideoPlayerController get videoController => _videoController;
  bool get isVideoReady => _isVideoReady.value;
  bool get isVideoPlaying => _isVideoPlaying.value;

  final RxDouble videoAspectRatio = (9/16).obs;

  @override
  void onInit() {
    super.onInit();
    _initializeVideo();
  }

  @override
  void onClose() {
    _videoController.dispose();
    super.onClose();
  }

  Future<void> _initializeVideo() async {
    try {
      _setupVideoController();

      await _videoController.initialize();

      _handleVideoInitialized();

      _videoController.addListener(() {
        if (_videoController.value.isPlaying) {
          _isVideoPlaying.value = true;
        }
      });

    } catch (e) {
      debugPrint('Error initializing welcome video: $e');
    }
  }

  void _handleVideoInitialized() {
    if (_videoController.value.isInitialized) {
      final size = _videoController.value.size;
      if (size.width > 0 && size.height > 0) {
        videoAspectRatio.value = size.width / size.height;
      }

      _isVideoReady.value = true;
      _playVideo();
    }
  }

  Future<void> _playVideo() async {
    if (_isVideoReady.value) {

      _videoController.setLooping(true);

      await _videoController.play();

    }
  }

  void _setupVideoController() {
    _videoController = VideoPlayerController.asset(videoAssetPath);
  }

  Future<void> pauseVideo() async {
    if (_videoController.value.isPlaying) {
      await _videoController.pause();
    }
  }


  Future<void> resumeVideo() async {
    if (!_videoController.value.isPlaying && _isVideoReady.value) {
      await _videoController.play();
    }
  }
}
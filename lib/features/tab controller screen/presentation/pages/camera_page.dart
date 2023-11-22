import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp/core/utils/app_images.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController controller;

  @override
  void initState() {
    super.initState();
    availableCameras().then((cameras) {
      controller = CameraController(cameras[0], ResolutionPreset.medium);
      controller.initialize().then((_) {
        if (!mounted) {
          return;
        }
        setState(() {});
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  bool isFlashlightOn = false;
  Widget flash = Image.asset(AppImages.lightOff, color: Colors.white);
  void toggleFlashlight() {
    if (isFlashlightOn) {
      controller.setFlashMode(FlashMode.off);
      flash = Image.asset(AppImages.lightOff, color: Colors.white);
    } else {
      controller.setFlashMode(FlashMode.torch);
      flash = Icon(Icons.flash_on, color: Colors.white, size: 45.r);
    }

    setState(() {
      isFlashlightOn = !isFlashlightOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            CameraPreview(controller),

            Positioned(
              top: 0,
              child: Container(
                width: 411.w,
                height: 85.h,
                decoration: const BoxDecoration(color: Colors.black),
                child: Stack(
                  children: [
                    Positioned(
                        top: 10.h,
                        left: 12.w,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              ),
            ),
            // Add other widgets on top of the camera feed as needed

            Positioned(
              bottom: 0,
              child: Container(
                width: 411.w,
                height: 73.h,
                decoration: const BoxDecoration(color: Colors.black),
              ),
            ),
            Positioned(
              bottom: 63.h,
              left: 50.w,
              child: InkWell(
                onTap: toggleFlashlight,
                child: flash,
              ),
            ),
            Positioned(
              bottom: 61.h,
              right: 35.w,
              child: InkWell(
                onTap: () {},
                child: Image.asset(AppImages.switchCamera, color: Colors.white),
              ),
            ),
            Positioned(
              bottom: 51.h,
              left: 160.w,
              child: InkWell(
                onTap: () {
                  controller.takePicture();
                },
                child: Container(
                  width: 92.w,
                  height: 92.h,
                  decoration: const ShapeDecoration(
                    color: Colors.transparent,
                    shape: OvalBorder(
                        side: BorderSide(color: Color(0xFFC4C4C4), width: 3)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

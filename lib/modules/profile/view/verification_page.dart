import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trading_app/gen/assets.gen.dart';
import 'package:trading_app/gen/colors.gen.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({Key? key}) : super(key: key);

  void _bottomSheet(BuildContext context) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(12),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Assets.icon.camera.svg(),
                  const SizedBox(width: 8),
                  const Text(
                    'Take Photo ID Card',
                    style: TextStyle(
                      color: ColorName.blue,
                    ),
                  ),
                ],
              ),
              const Divider(thickness: 1),
              Row(
                children: [
                  Assets.icon.upload.svg(),
                  const SizedBox(width: 8),
                  const Text(
                    'Upload Photo',
                    style: TextStyle(
                      color: ColorName.blue,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorName.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          centerTitle: true,
          leading: IconButton(
            onPressed: () => context.go('/profile'),
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: const Text(
            'Verification',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Type of ID card',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        height: 35,
                        child: DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            contentPadding: const EdgeInsets.all(8),
                            hintText: 'Select Type of ID card',
                          ),
                          items: const [
                            DropdownMenuItem<String>(
                              value: 'KTP / ID Card',
                              child: Row(
                                children: [
                                  Text('KTP / ID Card'),
                                ],
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Passport',
                              child: Row(
                                children: [
                                  Text('Passport'),
                                ],
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Drive License',
                              child: Row(
                                children: [
                                  Text('Drive License'),
                                ],
                              ),
                            ),
                          ],
                          onChanged: (value) {},
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Take a picture of the ID Card',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Assets.images.examplePhoto.image(),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {
                          _bottomSheet(context);
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: ColorName.white,
                          padding: const EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: const BorderSide(color: Colors.blue),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Assets.icon.camera.svg(),
                            const SizedBox(width: 8),
                            const Text(
                              'Take photo ID card',
                              style: TextStyle(color: ColorName.blue),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Take a selfie and ID Card',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Assets.images.exampleSelfie.image(height: 128),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {
                          _bottomSheet(context);
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: ColorName.white,
                          padding: const EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: const BorderSide(color: Colors.blue),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Assets.icon.camera.svg(),
                            const SizedBox(width: 8),
                            const Text(
                              'Take photo selfie',
                              style: TextStyle(color: ColorName.blue),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }
}


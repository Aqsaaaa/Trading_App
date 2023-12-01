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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
            const TabBar(
              tabs: [
                Tab(text: 'ID Card'),
                Tab(text: 'Bank Accounts'),
              ],
              indicatorColor: ColorName.blue,
              unselectedLabelColor: Colors.grey,
              labelColor: ColorName.blue,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
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
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text(
                            'Select Bank',
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
                                hintText: 'Select Bank',
                              ),
                              items: const [
                                DropdownMenuItem<String>(
                                  value: 'Bank BRI',
                                  child: Row(
                                    children: [
                                      Text('Bank BRI'),
                                    ],
                                  ),
                                ),
                                DropdownMenuItem<String>(
                                  value: 'Bank BCA',
                                  child: Row(
                                    children: [
                                      Text('Bank BCA'),
                                    ],
                                  ),
                                ),
                                DropdownMenuItem<String>(
                                  value: 'Bank BNI',
                                  child: Row(
                                    children: [
                                      Text('Bank BNI'),
                                    ],
                                  ),
                                ),
                              ],
                              onChanged: (value) {},
                            ),
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            'Name Bank Account',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            height: 35,
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                contentPadding: const EdgeInsets.all(8),
                                hintText: 'Input Name Bank Account',
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            'Bank Account Number',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            height: 35,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                contentPadding: const EdgeInsets.all(8),
                                hintText: 'Input Bank Account Number',
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            'Upload Bank Account Number',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            height: 35,
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey, width: 1.0),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  padding: const EdgeInsets.all(8),
                                  width: double.infinity,
                                  child: const Text(
                                    'Choose File',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                // Positioned(
                                //   top: 0,
                                //   bottom: 3,
                                //   right: 80,
                                //   child: IconButton(
                                //     onPressed: () {
                                //       // Add delete logic here
                                //     },
                                //     icon: const Icon(
                                //       Icons.clear,
                                //       size: 20,
                                //     ),
                                //   ),
                                // ),
                                Positioned(
                                  top: 0,
                                  bottom: 0,
                                  right: 0,
                                  child: GestureDetector(
                                    onTap: () {
                                      _bottomSheet(context);
                                    },
                                    child: Container(
                                      width: 80,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(8),
                                          bottomRight: Radius.circular(8),
                                        ),
                                        color: ColorName.blue,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Upload',
                                          style: TextStyle(
                                              color: ColorName.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Maximum upload file size: 5 MB',
                            textAlign: TextAlign.end,
                          ),
                          const SizedBox(height: 8),
                          // SizedBox(
                          //   width: double.infinity,
                          //   child: ElevatedButton(
                          //     onPressed: () {},
                          //     style: ElevatedButton.styleFrom(
                          //       foregroundColor: Colors.white,
                          //       backgroundColor: ColorName.blue,
                          //       padding: const EdgeInsets.all(10),
                          //       shape: RoundedRectangleBorder(
                          //         borderRadius: BorderRadius.circular(6),
                          //       ),
                          //     ),
                          //     child: const Text(
                          //       'Save Change',
                          //       style: TextStyle(
                          //         fontSize: 16,
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


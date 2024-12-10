import 'package:chewie/chewie.dart';
import 'package:choose_chow/Utilities/color_utility.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:video_player/video_player.dart';

class InstructionsWidget extends StatefulWidget {
  const InstructionsWidget({super.key});

  @override
  State<InstructionsWidget> createState() => _InstructionsWidgetState();
}

class _InstructionsWidgetState extends State<InstructionsWidget> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  Chewie? _videoPlayer;
  @override
  void initState() {
    super.initState();

    _performInitAction();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(
            4.w,
          ),
          child: SizedBox(
            height: 25.h,
            child: _videoPlayer ??
                const Center(
                  child: CircularProgressIndicator(),
                ),
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        _instructionItems(
            title: "Step 1:", subtitle: "Wave wand, say spell, make batter."),
        _instructionItems(
            title: "Step 2:", subtitle: "Wave wand, say spell, make batter."),
        _instructionItems(
            title: "Step 3:", subtitle: "Wave wand, say spell, make batter."),
        _instructionItems(
            title: "Step 4:", subtitle: "Wave wand, say spell, make batter."),
      ],
    );
  }

  Widget _instructionItems({required String title, required String subtitle}) =>
      Container(
        margin: EdgeInsets.symmetric(
          vertical: 0.5.h,
        ),
        decoration: BoxDecoration(
            border: Border.all(color: ColorUtility.hexadecimalHueColor),
            borderRadius: BorderRadius.circular(
              3.w,
            )),
        child: ListTile(
          title: RobotoCustomText(
            text: title,
            fontWeight: FontWeight.w700,
          ),
          subtitle: RobotoCustomText(
            text: subtitle,
          ),
        ),
      );

  void _performInitAction() async {
    _videoPlayerController =
        VideoPlayerController.asset("flutter_assets/sample-food.mp4");
    //todo to be changed to this once api is ready
    // _videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(
    //     'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'));
    await _videoPlayerController.initialize();
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: false,
      looping: false,
    );
    _videoPlayer = Chewie(controller: _chewieController);
    setState(() {});
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }
}

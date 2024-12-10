import 'package:choose_chow/Utilities/asset_image_utility.dart';
import 'package:choose_chow/Utilities/color_utility.dart';
import 'package:choose_chow/Utilities/reusable_codes.dart';
import 'package:choose_chow/screens/attachments/comment_widget.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:choose_chow/screens/attachments/space_grotesk_custom_text.dart';
import 'package:choose_chow/screens/background_image_widget.dart';
import 'package:choose_chow/screens/global_horizontal_padding_widget.dart';
import 'package:choose_chow/models/comment_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CommentsScreen extends StatefulWidget {
  const CommentsScreen({super.key});

  @override
  State<CommentsScreen> createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  List<CommentVm> _replies = <CommentVm>[
    CommentVm(
        imageUrl: AssetImageUtility.sampleUserImg,
        comment:
            "The only thing I would change is to reduce the amount of sugar in the batter, as it was a bit too sweet for my taste.",
        date: "25 minutes ago",
        name: "Akinwusi Kamal",
        isComment: false,
        isForMultipleComments: true,
        numberOfLike: 3,
        numberOfReplies: 2)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: generateAppBarWithPopContext(
        context: context,
        // centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(FontAwesomeIcons.comment),
            SpaceGroteskCustomText(
              text: "\tComments",
              fontWeight: FontWeight.w600,
              fontSize: 20.dp,
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 1.h,
            horizontal: 5.w,
          ),
          margin: EdgeInsets.only(
            bottom: 3.h,
          ),
          color: ColorUtility.hexadecimalGrey01,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Write a comment...",
                    border: const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: ColorUtility.hexadecimalHueColor,
                      ),
                      borderRadius: BorderRadius.circular(
                        3.w,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: ColorUtility.hexadecimalGrayColor,
                      ),
                      borderRadius: BorderRadius.circular(
                        3.w,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: RobotoCustomText(
                    text: "Send",
                    fontSize: 14.dp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: BackgroundImageWidget(
        child: GloabalHorizontalPaddingWidget(
          child: SingleChildScrollView(
            child: Card(
              elevation: 4.0,
              shadowColor: ColorUtility.hexadecimalGrey01,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                        CommentWidget(
                          commentVm: CommentVm(
                            imageUrl: AssetImageUtility.sampleUserImg,
                            comment:
                                "I really enjoyed this recipe. The pancakes were fluffy and the egg yoke sauce was creamy and delicious. I added some cheese and bacon to make it more filling. The only thing I would change is to reduce the amount of sugar in the batter, as it was a bit too sweet for my taste.\nOverall, a great breakfast dish that I would make again.",
                            date: "25 minutes ago",
                            name: "Oluwaseun Adeyemi",
                            numberOfLike: 5,
                            numberOfReplies: 7,
                            isComment: false,
                            isForMultipleComments: true,
                          ),
                        ),
                      ] +
                      _replies
                          .map(
                            (e) => CommentWidget(
                              commentVm: e,
                            ),
                          )
                          .toList() +
                      [
                        InkWell(
                          onTap: _loadMoreReplies,
                          child: const RobotoCustomText(
                            text: "Load More Comments..",
                            fontWeight: FontWeight.w700,
                            textColor: ColorUtility.hexadecimalGrayColor,
                          ),
                        ),
                        // SizedBox(
                        //   height: 15.h,
                        // ),
                      ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _loadMoreReplies() {
    _replies = [
      ..._replies,
      ...<CommentVm>[
        CommentVm(
          imageUrl: AssetImageUtility.ecoShopMarket,
          comment:
              "We can add all the elements of the list one after another to a new list by the use of addAll() method in Dart. To learn about this method you can follow this",
          date: "35 minutes ago",
          name: "Olaoluwa Ashley",
          isComment: false,
          isForMultipleComments: true,
          numberOfLike: 5,
          numberOfReplies: 1,
        )
      ]
    ];
    setState(() {});
  }
}

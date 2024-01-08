import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class YoutubeBottomSheet extends StatelessWidget {
  const YoutubeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.only(left: 20),
        height: 200,
        color: Colors.white,
        child: Column(
          children: [
            _header(),
            SizedBox(height: 10,),
            _itemButton(() => print('동영상 업로드 기능'), 'upload', 17, '동영상 업로드'),
            SizedBox(height: 10,),
            _itemButton(() => print('실시간 스트리밍 시작 기능'), 'broadcast', 25, '실시간 스트리밍 시작'),
          ],
        ),
      ),
    );
  }

  InkWell _itemButton(GestureTapCallback onTap, String iconName, double width, String text) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.withOpacity(0.3),
            ),
            child: Center(
              child: SvgPicture.asset(
                "assets/svg/icons/${iconName}.svg",
                width: width,
              ),
            ),
          ),
          SizedBox(width: 15,),
          Text(text),
        ],
      ),
    );
  }

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '만들기',
          style: TextStyle(fontSize: 16),
        ),
        IconButton(onPressed: Get.back, icon: Icon(Icons.close)),
      ],
    );
  }
}

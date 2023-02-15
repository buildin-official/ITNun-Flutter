import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:itnun/common/consts.dart';
import 'package:itnun/common/palette.dart';
import 'package:itnun/core/presentation/widget/app_back_button.dart';
import 'package:itnun/core/presentation/widget/labeled_text_field.dart';

import '../../../../core/presentation/widget/default_button_sized_box.dart';

class FindVerifyView extends StatelessWidget {
  const FindVerifyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("비밀번호 찾기"),
        leading: AppBackButton(),
      ),
      body: Padding(
        padding: kDefaultPadding,
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70,),
            Text("입력하신 전화번호로\n인증번호가 전송되었어요",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            SizedBox(height: 20,),
            Text("메세지에서 확인해주세요.",style:TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Palette.subtitle)),
            SizedBox(height: 50,),
            TextFormField(
              decoration: InputDecoration(
                hintText: "인증번호를 입력해주세요",
              ),
              keyboardType: TextInputType.number,
            ).labeled(
                label: "인증번호",
                required: true
            ),

            Expanded(child: SizedBox.shrink()),
            Padding(padding: EdgeInsets.only(bottom: 20),child: DefaultButtonSizedBox(child: ElevatedButton(onPressed: (){context.push("/find/newpassword");}, child: Text("인증하기"))),),



          ],
        ),
      ),
    );
  }
}

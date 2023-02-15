import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:itnun/common/consts.dart';
import 'package:itnun/common/palette.dart';
import 'package:itnun/core/presentation/widget/app_back_button.dart';
import 'package:itnun/core/presentation/widget/labeled_text_field.dart';

import '../../../../core/presentation/widget/default_button_sized_box.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({Key? key}) : super(key: key);

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
            Text("새 비밀번호를\n입력해주세요",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            SizedBox(height: 20,),
            Text("영어, 숫자 포함 8자 이상부터 사용할 수 있어요.",style:TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Palette.subtitle)),
            SizedBox(height: 50,),
            TextFormField(
              decoration: InputDecoration(
                hintText: "새 비밀번호를 입력해주세요",
              ),
              keyboardType: TextInputType.text,
            ).labeled(
                label: "비밀번호",
                required: true
            ),
            SizedBox(height: 30,),
            TextFormField(
              decoration: InputDecoration(
                hintText: "새 비밀번호를 다시 입력해주세요",
              ),
              keyboardType: TextInputType.text,
            ).labeled(
                label: "비밀번호 확인",
                required: true
            ),

            Expanded(child: SizedBox.shrink()),
            Padding(padding: EdgeInsets.only(bottom: 20),child: DefaultButtonSizedBox(child: ElevatedButton(onPressed: (){context.push("/login");}, child: Text("비밀번호 변경 완료하기"))),),



          ],
        ),
      ),
    );
  }
}

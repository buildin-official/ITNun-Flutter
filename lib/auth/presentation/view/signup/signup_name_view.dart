import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:itnun/common/consts.dart';
import 'package:itnun/common/palette.dart';
import 'package:itnun/core/presentation/widget/app_back_button.dart';
import 'package:itnun/core/presentation/widget/labeled_text_field.dart';

import '../../../../core/presentation/widget/default_button_sized_box.dart';

class SignupNameView extends StatelessWidget {
  const SignupNameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("회원가입"),
        leading: AppBackButton(),
      ),
      body: Padding(
        padding: kDefaultPadding,
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70,),
            Text("서비스 이용을 위해\n닉네임을 입력해주세요",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            SizedBox(height: 20,),
            Text("나중에 설정에서 수정할 수 있어요.",style:TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Palette.subtitle)),
            SizedBox(height: 50,),
            TextFormField(
              decoration: InputDecoration(
                hintText: "닉네임을 입력해주세요",
              ),
              keyboardType: TextInputType.text,
            ).labeled(
                label: "닉네임",
                required: true
            ),

            Expanded(child: SizedBox.shrink()),
            Padding(padding: EdgeInsets.only(bottom: 20),child: DefaultButtonSizedBox(child: ElevatedButton(onPressed: (){context.push("/signup/password");}, child: Text("다음"))),),
            //"다음"


          ],
        ),
      ),
    );
  }
}

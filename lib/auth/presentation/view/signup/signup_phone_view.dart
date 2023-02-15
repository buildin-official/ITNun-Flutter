import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:itnun/common/consts.dart';
import 'package:itnun/common/palette.dart';
import 'package:itnun/core/presentation/widget/app_back_button.dart';
import 'package:itnun/core/presentation/widget/default_button_sized_box.dart';
import 'package:itnun/core/presentation/widget/labeled_text_field.dart';

class SignupPhoneView extends HookWidget {
  const SignupPhoneView({Key? key}) : super(key: key);

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
            Text("회원가입에 사용할\n전화번호를 입력해주세요",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            SizedBox(height: 20,),
            Text("한 전화번호에 한 개의 계정만 만들 수 있어요.",style:TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Palette.subtitle)),
            SizedBox(height: 50,),

            TextFormField(
              decoration: InputDecoration(
                hintText: "전화번호를 입력해주세요",
              ),
              keyboardType: TextInputType.number,
            ).labeled(
              label: "전화번호",
              required: true
            ),

            Expanded(child: SizedBox.shrink()),
            Padding(padding: EdgeInsets.only(bottom: 20),child: DefaultButtonSizedBox(child: ElevatedButton(onPressed: (){context.push("/signup/verify");}, child: Text("인증번호 전송하기"))),),
            //"인증번호 전송하기"


          ],
        ),
      ),
    );
  }
}

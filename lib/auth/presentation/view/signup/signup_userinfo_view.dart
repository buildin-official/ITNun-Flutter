import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:itnun/common/consts.dart';
import 'package:itnun/common/palette.dart';
import 'package:itnun/core/presentation/widget/app_back_button.dart';

class SignupUserInfoView extends HookWidget {
  const SignupUserInfoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final status = useState(false);
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
            Text("더 나은 서비스를 위해\n추가 정보를 입력해주세요",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            SizedBox(height: 20,),
            Text("이 정보는 선택적으로 입력할 수 있어요",style:TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Palette.subtitle)),
            SizedBox(height: 50,),
            //Todo:지역,직업,학력,학과/전공 입력 TextField 만드셈
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("(예비)창업자에요.",style: TextStyle(color: Color(0xff262626),fontSize: 18,fontWeight: FontWeight.bold),),
                FlutterSwitch(
                    value: status.value,
                    onToggle:((val){status.value=val;}),
                  activeColor: Palette.primary.shade500,
                  width: 60,
                  height: 35,
                )
              ],
            ),

            Expanded(child: SizedBox.shrink()),
            Padding(padding: EdgeInsets.only(bottom: 20),child: Container(color: Colors.blue,height: 56,width: double.infinity,),),



          ],
        ),
      ),
    );
  }
}

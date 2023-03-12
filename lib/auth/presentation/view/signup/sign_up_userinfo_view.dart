import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:itnun/auth/presentation/widget/auth_title_widget.dart';
import 'package:itnun/common/consts.dart';
import 'package:itnun/common/palette.dart';
import 'package:itnun/core/presentation/widget/app_back_button.dart';
import 'package:itnun/core/presentation/widget/default_button_sized_box.dart';
import 'package:itnun/core/presentation/widget/focus_unsetter.dart';

class SignUpUserInfoView extends HookWidget {
  const SignUpUserInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final status = useState(false);
    final region = useState<String?>(null);
    final occupation = useState<String?>(null);
    final education = useState<String?>(null);
    final major = useState<String?>(null);

    final regions = ["서울", "인천", "대구", "부산", "광주", "대전", "경기", "강원", "충남", "충북", "전남", "전북", "경북", "경남", "제주", "세종"];
    final occupations = ["사업자", "직장인", "학생", "기타"];
    final educations = ["초졸", "중졸", "고졸", "대졸", "대학원 이수", "그 외"];
    final majors = ["어문계열", "상경계열", "이과계열", "공과계열", "예체능계열", "그 외"];


    return Scaffold(
      appBar: AppBar(
        title: const Text("회원가입"),
        leading: const AppBackButton(),
      ),
      body: FocusUnSetter(
        child: Padding(
          padding: kDefaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AuthTitleWidget(
                title: "더 나은 서비스를 위해\n추가 정보를 입력해주세요",
                subtitle: "이 정보는 선택적으로 입력할 수 있어요",
              ),
              //Todo:지역,직업,학력,학과/전공 입력 TextField 만드셈
              EasyDropDown(title: "지역", hintText: "현재 살고 있는 지역을 선택해주세요", selections: regions, selectedItem: region),
              EasyDropDown(title: "직업", hintText: "현재 직업을 선택해주세요", selections: occupations, selectedItem: occupation),
              EasyDropDown(title: "학력", hintText: "현재 학력을 선택해주세요", selections: educations, selectedItem: education),
              EasyDropDown(title: "학과 / 전공", hintText: "학과 또는 전공을 선택해주세요", selections: majors, selectedItem: major),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "(예비)창업자에요.",
                    style: TextStyle(
                      color: Palette.text.shade900,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CupertinoSwitch(
                    value: status.value,
                    onChanged: (value) => status.value = value,
                    activeColor: Palette.primary,
                  ),
                ],
              ),
              const Expanded(child: SizedBox.shrink()),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: DefaultButtonSizedBox(
                  child: ElevatedButton(
                    onPressed: () {
                      context.push("/signup/complete");
                    },
                    child: const Text("완료"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EasyDropDown extends HookWidget {
  final String title;
  final String hintText;
  final List<String> selections;
  final selectedItem;

  const EasyDropDown({Key? key, required this.title, required this.hintText, required this.selections, required this.selectedItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            title,
            style: TextStyle(
              fontFamily: "SUIT",
              fontWeight: FontWeight.bold,
              fontSize:18,
              color:Palette.text.shade900,
            )
        ),
        DropdownButton(
          hint: Text(hintText, style: TextStyle(color:Palette.text.shade400)),
          value: selectedItem.value,
          isExpanded: true,
          icon: const Icon(Icons.keyboard_arrow_down),
          menuMaxHeight: 330,
          items: selections.map((e) => DropdownMenuItem(
            value: e,
            child: Text(e, style: const TextStyle(fontFamily: "SUIT", fontWeight: FontWeight.w600)),
          )).toList(),
          onChanged: (value){ selectedItem.value = value!; },
        ),
        Container(height:20),
      ],
    );
  }
}

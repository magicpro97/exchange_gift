import 'package:exchange_gift/core/theme/colors.dart';
import 'package:exchange_gift/core/theme/dimens.dart';
import 'package:exchange_gift/features/landing_page/presentation/widgets/custom_check_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Dimens.zero),
        child: Container(),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      width: double.infinity,
      padding: const EdgeInsets.all(Dimens.normalPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Exchange Gift',
            style: Theme.of(context).textTheme.title.copyWith(
                  color: COLOR_PRIMARY,
                  fontSize: 36.0,
                  fontWeight: FontWeight.w700,
                ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: Dimens.xlargePadding),
            child: SvgPicture.asset(
              'assets/images/gift.svg',
              height: MediaQuery.of(context).size.height * 2 / 5,
            ),
          ),
          CustomCheckListItem(
            text: 'No one will draw their own name',
          ),
          CustomCheckListItem(
            text: 'Exclude certain draw combinations',
          ),
          CustomCheckListItem(
            text: 'Convenient wish lists',
          ),
          SizedBox(
            height: Dimens.largePadding,
          ),
          MaterialButton(
            height: 48.0,
            minWidth: 200.0,
            child: Text(
              "Let's start",
              style: Theme.of(context).textTheme.button,
            ),
            color: COLOR_PRIMARY,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

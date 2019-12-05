import 'package:exchange_gift/core/theme/dimens.dart';
import 'package:exchange_gift/features/landing_page/presentation/widgets/custom_text_field.dart';
import 'package:exchange_gift/generated/i18n.dart';
import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.all(Dimens.normalPadding),
      child: Column(
        children: <Widget>[
          CustomTextField(
            hintText: S.of(context).type_your_name,
          ),
          MaterialButton(
            child: Text(
              'Submit',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.green,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

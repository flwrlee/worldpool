import '../components/deposit_wallet_e_widget.dart';
import '../components/withdraw_wallet_e_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectEthereumWidget extends StatefulWidget {
  const SelectEthereumWidget({Key key}) : super(key: key);

  @override
  _SelectEthereumWidgetState createState() => _SelectEthereumWidgetState();
}

class _SelectEthereumWidgetState extends State<SelectEthereumWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: () async {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
            child: Text(
              'Would you like to withdraw or deposit into this wallet?',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).title3,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
            child: FFButtonWidget(
              onPressed: () async {
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor:
                      FlutterFlowTheme.of(context).primaryBackground,
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: MediaQuery.of(context).viewInsets,
                      child: WithdrawWalletEWidget(),
                    );
                  },
                );
              },
              text: 'WITHDRAW',
              options: FFButtonOptions(
                width: 130,
                height: 40,
                color: Color(0xFFEEEEEE),
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Lato',
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
                elevation: 5,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: 12,
              ),
            ),
          ),
          FFButtonWidget(
            onPressed: () async {
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) {
                  return Padding(
                    padding: MediaQuery.of(context).viewInsets,
                    child: DepositWalletEWidget(),
                  );
                },
              );
            },
            text: 'DEPOSIT',
            options: FFButtonOptions(
              width: 130,
              height: 40,
              color: Color(0xFFEEEEEE),
              textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                    fontFamily: 'Lato',
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
              elevation: 5,
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1,
              ),
              borderRadius: 12,
            ),
          ),
        ],
      ),
    );
  }
}

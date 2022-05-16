import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DepositWalletSWidget extends StatefulWidget {
  const DepositWalletSWidget({Key key}) : super(key: key);

  @override
  _DepositWalletSWidgetState createState() => _DepositWalletSWidgetState();
}

class _DepositWalletSWidgetState extends State<DepositWalletSWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                  child: Text(
                    'Solana Wallet Deposit',
                    style: FlutterFlowTheme.of(context).title3,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                  child: Text(
                    'Transfer SOL on the SOLANA blockchain.',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                  child: Text(
                    'sefegeuhfiuehfiuewhiuweuhfiehfie',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                  child: Text(
                    'The network fee is 0.0023 SOL',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lato',
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                  ),
                ),
              ],
            ),
            FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'Deposit',
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
      ),
    );
  }
}

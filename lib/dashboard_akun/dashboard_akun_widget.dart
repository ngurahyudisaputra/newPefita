import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardAkunWidget extends StatefulWidget {
  const DashboardAkunWidget({Key key}) : super(key: key);

  @override
  _DashboardAkunWidgetState createState() => _DashboardAkunWidgetState();
}

class _DashboardAkunWidgetState extends State<DashboardAkunWidget> {
  bool switchListTileValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryColor,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/images/Illustrasi_orang_kecil_6.svg',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 0, 10, 0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'zeyy87uj' /* Hai Mitra Pefita */,
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'm249egwp' /* Jakarta */,
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 10,
                                borderWidth: 1,
                                buttonSize: 40,
                                icon: Icon(
                                  Icons.location_on,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 25,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 10,
                                borderWidth: 1,
                                buttonSize: 40,
                                icon: Icon(
                                  Icons.shopping_cart,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 25,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 40,
                                icon: Icon(
                                  Icons.mail_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 25,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: SwitchListTile(
                            value: switchListTileValue ??= true,
                            onChanged: (newValue) =>
                                setState(() => switchListTileValue = newValue),
                            title: Text(
                              FFLocalizations.of(context).getText(
                                '4jmy6xp8' /* Status Tugas */,
                              ),
                              style: FlutterFlowTheme.of(context).subtitle1,
                            ),
                            subtitle: Text(
                              FFLocalizations.of(context).getText(
                                'twv3ytj2' /* Hari ini */,
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                            tileColor:
                                FlutterFlowTheme.of(context).primaryBtnText,
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.add_call,
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                        title: Text(
                          FFLocalizations.of(context).getText(
                            'vse9oox6' /* Layanan Alo Vet */,
                          ),
                          style: FlutterFlowTheme.of(context).title3,
                        ),
                        subtitle: Text(
                          FFLocalizations.of(context).getText(
                            '9c438up7' /* Ringkasan Layanan  */,
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.hail,
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                        title: Text(
                          FFLocalizations.of(context).getText(
                            '3f9t9802' /* Doctor on Demand */,
                          ),
                          style: FlutterFlowTheme.of(context).title3,
                        ),
                        subtitle: Text(
                          FFLocalizations.of(context).getText(
                            't2i8c0qk' /* Ringkasan Layanan */,
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.pets_outlined,
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                        title: Text(
                          FFLocalizations.of(context).getText(
                            'b1rnxgwn' /* Grooming on Demand */,
                          ),
                          style: FlutterFlowTheme.of(context).title3,
                        ),
                        subtitle: Text(
                          FFLocalizations.of(context).getText(
                            'dncdi63t' /* Ringkasan Layanan */,
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.fastfood_rounded,
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                        title: Text(
                          FFLocalizations.of(context).getText(
                            '63hbxf5o' /* Pet Catering */,
                          ),
                          style: FlutterFlowTheme.of(context).title3,
                        ),
                        subtitle: Text(
                          FFLocalizations.of(context).getText(
                            'z32dqtlk' /* Ringkasan Layanan */,
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(14, 10, 0, 0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'y56n2hp3' /* Pesanan hari ini */,
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                      ListTile(
                        title: Text(
                          FFLocalizations.of(context).getText(
                            'jcoupj36' /* Lorem ipsum dolor... */,
                          ),
                          style: FlutterFlowTheme.of(context).title3,
                        ),
                        subtitle: Text(
                          FFLocalizations.of(context).getText(
                            'vuyn2wms' /* Lorem ipsum dolor... */,
                          ),
                          style: FlutterFlowTheme.of(context).subtitle2,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Colors.white,
                        dense: false,
                      ),
                      ListTile(
                        title: Text(
                          FFLocalizations.of(context).getText(
                            '7mxlgsto' /* Lorem ipsum dolor... */,
                          ),
                          style: FlutterFlowTheme.of(context).title3,
                        ),
                        subtitle: Text(
                          FFLocalizations.of(context).getText(
                            'z60tdh4l' /* Lorem ipsum dolor... */,
                          ),
                          style: FlutterFlowTheme.of(context).subtitle2,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      ),
                      ListTile(
                        title: Text(
                          FFLocalizations.of(context).getText(
                            'w4i281fv' /* Lorem ipsum dolor... */,
                          ),
                          style: FlutterFlowTheme.of(context).title3,
                        ),
                        subtitle: Text(
                          FFLocalizations.of(context).getText(
                            '5ld4rnad' /* Lorem ipsum dolor... */,
                          ),
                          style: FlutterFlowTheme.of(context).subtitle2,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      ),
                      ListTile(
                        title: Text(
                          FFLocalizations.of(context).getText(
                            'wz8xhea5' /* Lorem ipsum dolor... */,
                          ),
                          style: FlutterFlowTheme.of(context).title3,
                        ),
                        subtitle: Text(
                          FFLocalizations.of(context).getText(
                            '7gol1lz0' /* Lorem ipsum dolor... */,
                          ),
                          style: FlutterFlowTheme.of(context).subtitle2,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

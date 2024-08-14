import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, -0.21),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 45.0, 0.0, 0.0),
                child: FlutterFlowVideoPlayer(
                  path: 'assets/videos/MAIN1.mp4',
                  videoType: VideoType.asset,
                  autoPlay: false,
                  looping: true,
                  showControls: true,
                  allowFullScreen: true,
                  allowPlaybackSpeedMenu: false,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.74, -0.43),
              child: Container(
                width: 73.3,
                height: 51.0,
                decoration: BoxDecoration(
                  color: Color(0xFF711B1B),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.62, -0.42),
              child: Text(
                FFAppState().code1,
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 38.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.06, -0.58),
              child: Container(
                width: 329.0,
                height: 46.1,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Align(
                  alignment: AlignmentDirectional(-0.71, -0.56),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Text(
                      '2:59:00 AM',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Roboto',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.65, -0.56),
              child: AnimatedDefaultTextStyle(
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: 'Roboto',
                      letterSpacing: 0.0,
                    ),
                duration: Duration(milliseconds: 600),
                curve: Curves.easeInOutQuint,
                child: Text(
                  '8/30/24',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

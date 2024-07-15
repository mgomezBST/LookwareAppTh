import '/flutter_flow/flutter_flow_util.dart';
import 'intake_list_widget.dart' show IntakeListWidget;
import 'package:flutter/material.dart';

class IntakeListModel extends FlutterFlowModel<IntakeListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

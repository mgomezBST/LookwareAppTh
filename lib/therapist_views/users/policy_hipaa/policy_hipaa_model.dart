import '/flutter_flow/flutter_flow_util.dart';
import 'policy_hipaa_widget.dart' show PolicyHipaaWidget;
import 'package:flutter/material.dart';

class PolicyHipaaModel extends FlutterFlowModel<PolicyHipaaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Column widget.
  ScrollController? columnController;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    columnController?.dispose();
  }
}

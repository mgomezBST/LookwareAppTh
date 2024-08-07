import '/flutter_flow/flutter_flow_util.dart';
import 'policy_online_privacy_notice_widget.dart'
    show PolicyOnlinePrivacyNoticeWidget;
import 'package:flutter/material.dart';

class PolicyOnlinePrivacyNoticeModel
    extends FlutterFlowModel<PolicyOnlinePrivacyNoticeWidget> {
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

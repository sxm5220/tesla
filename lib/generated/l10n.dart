// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Dnsys`
  String get sy_web_name {
    return Intl.message(
      'Dnsys',
      name: 'sy_web_name',
      desc: '',
      args: [],
    );
  }

  /// `New products coming soon...`
  String get sy_intro_show {
    return Intl.message(
      'New products coming soon...',
      name: 'sy_intro_show',
      desc: '',
      args: [],
    );
  }

  /// `动思科技`
  String get sy_app_name {
    return Intl.message(
      '动思科技',
      name: 'sy_app_name',
      desc: '',
      args: [],
    );
  }

  /// `请连接设备！`
  String get sy_ble_disconnect_tip {
    return Intl.message(
      '请连接设备！',
      name: 'sy_ble_disconnect_tip',
      desc: '',
      args: [],
    );
  }

  /// `我的`
  String get sy_mine_name {
    return Intl.message(
      '我的',
      name: 'sy_mine_name',
      desc: '',
      args: [],
    );
  }

  /// `圈子`
  String get sy_community_title {
    return Intl.message(
      '圈子',
      name: 'sy_community_title',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get sy_register {
    return Intl.message(
      'Register',
      name: 'sy_register',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get sy_login {
    return Intl.message(
      'Sign in',
      name: 'sy_login',
      desc: '',
      args: [],
    );
  }

  /// `密码`
  String get sy_secret {
    return Intl.message(
      '密码',
      name: 'sy_secret',
      desc: '',
      args: [],
    );
  }

  /// `用户名/手机号/邮箱`
  String get sy_user_login {
    return Intl.message(
      '用户名/手机号/邮箱',
      name: 'sy_user_login',
      desc: '',
      args: [],
    );
  }

  /// `手机号`
  String get sy_user_phone_login {
    return Intl.message(
      '手机号',
      name: 'sy_user_phone_login',
      desc: '',
      args: [],
    );
  }

  /// `验证码`
  String get sy_user_phone_verify {
    return Intl.message(
      '验证码',
      name: 'sy_user_phone_verify',
      desc: '',
      args: [],
    );
  }

  /// `获取验证码成功！`
  String get sy_user_phone_code_success {
    return Intl.message(
      '获取验证码成功！',
      name: 'sy_user_phone_code_success',
      desc: '',
      args: [],
    );
  }

  /// `获取验证码失败！`
  String get sy_user_phone_code_fail {
    return Intl.message(
      '获取验证码失败！',
      name: 'sy_user_phone_code_fail',
      desc: '',
      args: [],
    );
  }

  /// `请输入验证码`
  String get sy_user_input_verify {
    return Intl.message(
      '请输入验证码',
      name: 'sy_user_input_verify',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get sy_forget_secret {
    return Intl.message(
      'Forgot Password?',
      name: 'sy_forget_secret',
      desc: '',
      args: [],
    );
  }

  /// `请输入手机号！`
  String get sy_phone_valid_null {
    return Intl.message(
      '请输入手机号！',
      name: 'sy_phone_valid_null',
      desc: '',
      args: [],
    );
  }

  /// `请输入有效的手机号！`
  String get sy_phone_no_valid {
    return Intl.message(
      '请输入有效的手机号！',
      name: 'sy_phone_no_valid',
      desc: '',
      args: [],
    );
  }

  /// `请输入邮箱！`
  String get sy_email_valid_null {
    return Intl.message(
      '请输入邮箱！',
      name: 'sy_email_valid_null',
      desc: '',
      args: [],
    );
  }

  /// `请输入有效的邮箱！`
  String get sy_email_no_valid {
    return Intl.message(
      '请输入有效的邮箱！',
      name: 'sy_email_no_valid',
      desc: '',
      args: [],
    );
  }

  /// `请输入密码！`
  String get sy_pwd_valid_null {
    return Intl.message(
      '请输入密码！',
      name: 'sy_pwd_valid_null',
      desc: '',
      args: [],
    );
  }

  /// `请输入长度不能少于6的密码！`
  String get sy_pwd_wrong {
    return Intl.message(
      '请输入长度不能少于6的密码！',
      name: 'sy_pwd_wrong',
      desc: '',
      args: [],
    );
  }

  /// `登录成功！`
  String get sy_login_success {
    return Intl.message(
      '登录成功！',
      name: 'sy_login_success',
      desc: '',
      args: [],
    );
  }

  /// `登录失败！`
  String get sy_login_fail {
    return Intl.message(
      '登录失败！',
      name: 'sy_login_fail',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get sy_account_tip {
    return Intl.message(
      'Don\'t have an account?',
      name: 'sy_account_tip',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get sy_have_account_tip {
    return Intl.message(
      'Already have an account?',
      name: 'sy_have_account_tip',
      desc: '',
      args: [],
    );
  }

  /// `SIGN UP`
  String get sy_sign_up_tip {
    return Intl.message(
      'SIGN UP',
      name: 'sy_sign_up_tip',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get sy_sign_up_title {
    return Intl.message(
      'Sign Up',
      name: 'sy_sign_up_title',
      desc: '',
      args: [],
    );
  }

  /// `SIGN IN`
  String get sy_login_in_tip {
    return Intl.message(
      'SIGN IN',
      name: 'sy_login_in_tip',
      desc: '',
      args: [],
    );
  }

  /// `OR`
  String get sy_other_platfroms {
    return Intl.message(
      'OR',
      name: 'sy_other_platfroms',
      desc: '',
      args: [],
    );
  }

  /// `Verify Email`
  String get sy_email_verify {
    return Intl.message(
      'Verify Email',
      name: 'sy_email_verify',
      desc: '',
      args: [],
    );
  }

  /// `本机号码一键登录`
  String get sy_one_click_login {
    return Intl.message(
      '本机号码一键登录',
      name: 'sy_one_click_login',
      desc: '',
      args: [],
    );
  }

  /// `是否退出登录？`
  String get sy_login_out_tip {
    return Intl.message(
      '是否退出登录？',
      name: 'sy_login_out_tip',
      desc: '',
      args: [],
    );
  }

  /// `其他方式登录`
  String get sy_other_login {
    return Intl.message(
      '其他方式登录',
      name: 'sy_other_login',
      desc: '',
      args: [],
    );
  }

  /// `用户名`
  String get sy_user_name {
    return Intl.message(
      '用户名',
      name: 'sy_user_name',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get sy_user_email {
    return Intl.message(
      'Email',
      name: 'sy_user_email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get sy_user_pwd {
    return Intl.message(
      'Password',
      name: 'sy_user_pwd',
      desc: '',
      args: [],
    );
  }

  /// `昵称`
  String get sy_nick_name {
    return Intl.message(
      '昵称',
      name: 'sy_nick_name',
      desc: '',
      args: [],
    );
  }

  /// `请输入用户名！`
  String get sy_user_name_valid_null {
    return Intl.message(
      '请输入用户名！',
      name: 'sy_user_name_valid_null',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get sy_confirm_user_pwd {
    return Intl.message(
      'Confirm password',
      name: 'sy_confirm_user_pwd',
      desc: '',
      args: [],
    );
  }

  /// `确认密码不正确！`
  String get sy_confirm_user_pwd_fail {
    return Intl.message(
      '确认密码不正确！',
      name: 'sy_confirm_user_pwd_fail',
      desc: '',
      args: [],
    );
  }

  /// `当前网络环境不支持认证！`
  String get sy_jverify_fail {
    return Intl.message(
      '当前网络环境不支持认证！',
      name: 'sy_jverify_fail',
      desc: '',
      args: [],
    );
  }

  /// `手机号认证失败！`
  String get sy_phone_jverify_fail {
    return Intl.message(
      '手机号认证失败！',
      name: 'sy_phone_jverify_fail',
      desc: '',
      args: [],
    );
  }

  /// `手机号登录失败，请使用其他方式登录！`
  String get sy_phone_login_fail {
    return Intl.message(
      '手机号登录失败，请使用其他方式登录！',
      name: 'sy_phone_login_fail',
      desc: '',
      args: [],
    );
  }

  /// `返回`
  String get sy_go_back {
    return Intl.message(
      '返回',
      name: 'sy_go_back',
      desc: '',
      args: [],
    );
  }

  /// `开启`
  String get sy_app_start {
    return Intl.message(
      '开启',
      name: 'sy_app_start',
      desc: '',
      args: [],
    );
  }

  /// `您的设备不支持蓝牙功能！`
  String get sy_ble_unsupported {
    return Intl.message(
      '您的设备不支持蓝牙功能！',
      name: 'sy_ble_unsupported',
      desc: '',
      args: [],
    );
  }

  /// `请授权动思科技应用程序使用蓝牙和定位！`
  String get sy_ble_unauthorized {
    return Intl.message(
      '请授权动思科技应用程序使用蓝牙和定位！',
      name: 'sy_ble_unauthorized',
      desc: '',
      args: [],
    );
  }

  /// `您设备上的蓝牙已关闭！`
  String get sy_ble_powered_off {
    return Intl.message(
      '您设备上的蓝牙已关闭！',
      name: 'sy_ble_powered_off',
      desc: '',
      args: [],
    );
  }

  /// `启用位置服务!`
  String get sy_ble_locationServices_disabled {
    return Intl.message(
      '启用位置服务!',
      name: 'sy_ble_locationServices_disabled',
      desc: '',
      args: [],
    );
  }

  /// `您设备上的蓝牙已启动！`
  String get sy_ble_ready {
    return Intl.message(
      '您设备上的蓝牙已启动！',
      name: 'sy_ble_ready',
      desc: '',
      args: [],
    );
  }

  /// `等待获取蓝牙状态`
  String get sy_ble_status {
    return Intl.message(
      '等待获取蓝牙状态',
      name: 'sy_ble_status',
      desc: '',
      args: [],
    );
  }

  /// `FES已连接`
  String get sy_ble_fes_connect {
    return Intl.message(
      'FES已连接',
      name: 'sy_ble_fes_connect',
      desc: '',
      args: [],
    );
  }

  /// `FES未连接`
  String get sy_ble_fes_not_connect {
    return Intl.message(
      'FES未连接',
      name: 'sy_ble_fes_not_connect',
      desc: '',
      args: [],
    );
  }

  /// `助力中`
  String get sy_ble_helping {
    return Intl.message(
      '助力中',
      name: 'sy_ble_helping',
      desc: '',
      args: [],
    );
  }

  /// `未助力`
  String get sy_ble_not_helping {
    return Intl.message(
      '未助力',
      name: 'sy_ble_not_helping',
      desc: '',
      args: [],
    );
  }

  /// `已阅读并同意`
  String get sy_already_read {
    return Intl.message(
      '已阅读并同意',
      name: 'sy_already_read',
      desc: '',
      args: [],
    );
  }

  /// `《用户协议》`
  String get sy_user_agreement {
    return Intl.message(
      '《用户协议》',
      name: 'sy_user_agreement',
      desc: '',
      args: [],
    );
  }

  /// `《隐私政策》`
  String get sy_privacy_policy {
    return Intl.message(
      '《隐私政策》',
      name: 'sy_privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `请阅读并勾选页面协议`
  String get sy_policy_select {
    return Intl.message(
      '请阅读并勾选页面协议',
      name: 'sy_policy_select',
      desc: '',
      args: [],
    );
  }

  /// `金币`
  String get sy_money_title {
    return Intl.message(
      '金币',
      name: 'sy_money_title',
      desc: '',
      args: [],
    );
  }

  /// `发布`
  String get sy_publish_title {
    return Intl.message(
      '发布',
      name: 'sy_publish_title',
      desc: '',
      args: [],
    );
  }

  /// `粉丝`
  String get sy_followers_title {
    return Intl.message(
      '粉丝',
      name: 'sy_followers_title',
      desc: '',
      args: [],
    );
  }

  /// `关注`
  String get sy_following_title {
    return Intl.message(
      '关注',
      name: 'sy_following_title',
      desc: '',
      args: [],
    );
  }

  /// `选择国家或地区`
  String get sy_select_area {
    return Intl.message(
      '选择国家或地区',
      name: 'sy_select_area',
      desc: '',
      args: [],
    );
  }

  /// `已同意`
  String get sy_agree {
    return Intl.message(
      '已同意',
      name: 'sy_agree',
      desc: '',
      args: [],
    );
  }

  /// `未同意`
  String get sy_not_agree {
    return Intl.message(
      '未同意',
      name: 'sy_not_agree',
      desc: '',
      args: [],
    );
  }

  /// `请求成功！`
  String get sy_request_success {
    return Intl.message(
      '请求成功！',
      name: 'sy_request_success',
      desc: '',
      args: [],
    );
  }

  /// `请求失败！`
  String get sy_request_fail {
    return Intl.message(
      '请求失败！',
      name: 'sy_request_fail',
      desc: '',
      args: [],
    );
  }

  /// `训练记录`
  String get sy_train_record {
    return Intl.message(
      '训练记录',
      name: 'sy_train_record',
      desc: '',
      args: [],
    );
  }

  /// `请稍候...`
  String get sy_loading {
    return Intl.message(
      '请稍候...',
      name: 'sy_loading',
      desc: '',
      args: [],
    );
  }

  /// `提示`
  String get sy_tip {
    return Intl.message(
      '提示',
      name: 'sy_tip',
      desc: '',
      args: [],
    );
  }

  /// `确认删除吗？`
  String get sy_delete_tip {
    return Intl.message(
      '确认删除吗？',
      name: 'sy_delete_tip',
      desc: '',
      args: [],
    );
  }

  /// `Sure`
  String get sy_sure {
    return Intl.message(
      'Sure',
      name: 'sy_sure',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get sy_cancel {
    return Intl.message(
      'Cancel',
      name: 'sy_cancel',
      desc: '',
      args: [],
    );
  }

  /// `文件上传失败，请重试！`
  String get sy_upload_file_fail {
    return Intl.message(
      '文件上传失败，请重试！',
      name: 'sy_upload_file_fail',
      desc: '',
      args: [],
    );
  }

  /// `文件上传成功！`
  String get sy_upload_file_success {
    return Intl.message(
      '文件上传成功！',
      name: 'sy_upload_file_success',
      desc: '',
      args: [],
    );
  }

  /// `没有可用网络，请查看网络状态！`
  String get sy_network_status_fail {
    return Intl.message(
      '没有可用网络，请查看网络状态！',
      name: 'sy_network_status_fail',
      desc: '',
      args: [],
    );
  }

  /// `训练记录添加成功！`
  String get sy_insert_train_record_success {
    return Intl.message(
      '训练记录添加成功！',
      name: 'sy_insert_train_record_success',
      desc: '',
      args: [],
    );
  }

  /// `训练记录添加失败！`
  String get sy_insert_train_record_fail {
    return Intl.message(
      '训练记录添加失败！',
      name: 'sy_insert_train_record_fail',
      desc: '',
      args: [],
    );
  }

  /// `待压缩文件不存在，请重试！`
  String get sy_zip_fail_found_null {
    return Intl.message(
      '待压缩文件不存在，请重试！',
      name: 'sy_zip_fail_found_null',
      desc: '',
      args: [],
    );
  }

  /// `添加训练记录`
  String get sy_add_record {
    return Intl.message(
      '添加训练记录',
      name: 'sy_add_record',
      desc: '',
      args: [],
    );
  }

  /// `正在录制中，如要添加训练记录，请先停止录制！`
  String get sy_recording {
    return Intl.message(
      '正在录制中，如要添加训练记录，请先停止录制！',
      name: 'sy_recording',
      desc: '',
      args: [],
    );
  }

  /// `没有录制到数据，请重试！`
  String get sy_recording_source_null {
    return Intl.message(
      '没有录制到数据，请重试！',
      name: 'sy_recording_source_null',
      desc: '',
      args: [],
    );
  }

  /// `获取文件路径失败，请重试！`
  String get sy_doc_path_fail {
    return Intl.message(
      '获取文件路径失败，请重试！',
      name: 'sy_doc_path_fail',
      desc: '',
      args: [],
    );
  }

  /// `是否确认清除本地全部数据（注意：一旦清除无法恢复）？`
  String get sy_delete_local_fail_tip {
    return Intl.message(
      '是否确认清除本地全部数据（注意：一旦清除无法恢复）？',
      name: 'sy_delete_local_fail_tip',
      desc: '',
      args: [],
    );
  }

  /// `本地数据已全部清除！`
  String get sy_delete_local_fail_success {
    return Intl.message(
      '本地数据已全部清除！',
      name: 'sy_delete_local_fail_success',
      desc: '',
      args: [],
    );
  }

  /// `数据已存入本地中，请到训练记录中管理数据！`
  String get sy_save_local_tip {
    return Intl.message(
      '数据已存入本地中，请到训练记录中管理数据！',
      name: 'sy_save_local_tip',
      desc: '',
      args: [],
    );
  }

  /// `是否上传该文件？`
  String get sy_upload_tip {
    return Intl.message(
      '是否上传该文件？',
      name: 'sy_upload_tip',
      desc: '',
      args: [],
    );
  }

  /// `关于我们`
  String get sy_about_us {
    return Intl.message(
      '关于我们',
      name: 'sy_about_us',
      desc: '',
      args: [],
    );
  }

  /// `Copyright ©️ 2021-2023 北京动思创新科技有限公司版权所有`
  String get sy_company_name {
    return Intl.message(
      'Copyright ©️ 2021-2023 北京动思创新科技有限公司版权所有',
      name: 'sy_company_name',
      desc: '',
      args: [],
    );
  }

  /// `当前版本：`
  String get sy_current_version {
    return Intl.message(
      '当前版本：',
      name: 'sy_current_version',
      desc: '',
      args: [],
    );
  }

  /// `本地中暂无存储数据！`
  String get sy_local_source_no {
    return Intl.message(
      '本地中暂无存储数据！',
      name: 'sy_local_source_no',
      desc: '',
      args: [],
    );
  }

  /// `该本地文件删除成功！`
  String get sy_local_delete_success {
    return Intl.message(
      '该本地文件删除成功！',
      name: 'sy_local_delete_success',
      desc: '',
      args: [],
    );
  }

  /// `本地目录获取失败！`
  String get sy_find_local_fail_tip {
    return Intl.message(
      '本地目录获取失败！',
      name: 'sy_find_local_fail_tip',
      desc: '',
      args: [],
    );
  }

  /// `发布`
  String get sy_publish {
    return Intl.message(
      '发布',
      name: 'sy_publish',
      desc: '',
      args: [],
    );
  }

  /// `这一刻的想法...`
  String get sy_thought_moment {
    return Intl.message(
      '这一刻的想法...',
      name: 'sy_thought_moment',
      desc: '',
      args: [],
    );
  }

  /// `保存成功！`
  String get sy_save_success {
    return Intl.message(
      '保存成功！',
      name: 'sy_save_success',
      desc: '',
      args: [],
    );
  }

  /// `保存失败！`
  String get sy_save_fail {
    return Intl.message(
      '保存失败！',
      name: 'sy_save_fail',
      desc: '',
      args: [],
    );
  }

  /// `暂无权限！`
  String get sy_no_permission {
    return Intl.message(
      '暂无权限！',
      name: 'sy_no_permission',
      desc: '',
      args: [],
    );
  }

  /// `复制成功！`
  String get sy_copy_success {
    return Intl.message(
      '复制成功！',
      name: 'sy_copy_success',
      desc: '',
      args: [],
    );
  }

  /// `下载到手机`
  String get sy_download_into_phone {
    return Intl.message(
      '下载到手机',
      name: 'sy_download_into_phone',
      desc: '',
      args: [],
    );
  }

  /// `拖动到此处删除`
  String get sy_drag_delete {
    return Intl.message(
      '拖动到此处删除',
      name: 'sy_drag_delete',
      desc: '',
      args: [],
    );
  }

  /// `所在位置`
  String get sy_location {
    return Intl.message(
      '所在位置',
      name: 'sy_location',
      desc: '',
      args: [],
    );
  }

  /// `训练数据录制`
  String get sy_train_record_title {
    return Intl.message(
      '训练数据录制',
      name: 'sy_train_record_title',
      desc: '',
      args: [],
    );
  }

  /// `暂无训练记录！`
  String get sy_train_data_null_title {
    return Intl.message(
      '暂无训练记录！',
      name: 'sy_train_data_null_title',
      desc: '',
      args: [],
    );
  }

  /// `训练`
  String get sy_train {
    return Intl.message(
      '训练',
      name: 'sy_train',
      desc: '',
      args: [],
    );
  }

  /// `选择训练用户`
  String get sy_select_train_user {
    return Intl.message(
      '选择训练用户',
      name: 'sy_select_train_user',
      desc: '',
      args: [],
    );
  }

  /// `搜索`
  String get sy_search {
    return Intl.message(
      '搜索',
      name: 'sy_search',
      desc: '',
      args: [],
    );
  }

  /// `暂无训练用户`
  String get sy_train_user_null {
    return Intl.message(
      '暂无训练用户',
      name: 'sy_train_user_null',
      desc: '',
      args: [],
    );
  }

  /// `正在加载中...`
  String get sy_loading_tip {
    return Intl.message(
      '正在加载中...',
      name: 'sy_loading_tip',
      desc: '',
      args: [],
    );
  }

  /// `上拉加载更多`
  String get sy_loading_more {
    return Intl.message(
      '上拉加载更多',
      name: 'sy_loading_more',
      desc: '',
      args: [],
    );
  }

  /// `没有更多数据`
  String get sy_no_more_data {
    return Intl.message(
      '没有更多数据',
      name: 'sy_no_more_data',
      desc: '',
      args: [],
    );
  }

  /// `已经到达最后一页`
  String get sy_last_page {
    return Intl.message(
      '已经到达最后一页',
      name: 'sy_last_page',
      desc: '',
      args: [],
    );
  }

  /// `左滑删除`
  String get sy_delete_intro {
    return Intl.message(
      '左滑删除',
      name: 'sy_delete_intro',
      desc: '',
      args: [],
    );
  }

  /// `暂无训练类型可选！`
  String get sy_train_type_null {
    return Intl.message(
      '暂无训练类型可选！',
      name: 'sy_train_type_null',
      desc: '',
      args: [],
    );
  }

  /// `请选择训练类型！`
  String get sy_train_type_select_null {
    return Intl.message(
      '请选择训练类型！',
      name: 'sy_train_type_select_null',
      desc: '',
      args: [],
    );
  }

  /// `（未选择训练类型）`
  String get sy_unselect_train_type {
    return Intl.message(
      '（未选择训练类型）',
      name: 'sy_unselect_train_type',
      desc: '',
      args: [],
    );
  }

  /// `开始录制`
  String get sy_start_record {
    return Intl.message(
      '开始录制',
      name: 'sy_start_record',
      desc: '',
      args: [],
    );
  }

  /// `暂停录制`
  String get sy_pause_record {
    return Intl.message(
      '暂停录制',
      name: 'sy_pause_record',
      desc: '',
      args: [],
    );
  }

  /// `继续录制`
  String get sy_goon_record {
    return Intl.message(
      '继续录制',
      name: 'sy_goon_record',
      desc: '',
      args: [],
    );
  }

  /// `停止录制`
  String get sy_stop_record {
    return Intl.message(
      '停止录制',
      name: 'sy_stop_record',
      desc: '',
      args: [],
    );
  }

  /// `设备列表`
  String get sy_tcp_device_list {
    return Intl.message(
      '设备列表',
      name: 'sy_tcp_device_list',
      desc: '',
      args: [],
    );
  }

  /// `设备`
  String get sy_device {
    return Intl.message(
      '设备',
      name: 'sy_device',
      desc: '',
      args: [],
    );
  }

  /// `暂无链接设备！`
  String get sy_connect_tcp_null {
    return Intl.message(
      '暂无链接设备！',
      name: 'sy_connect_tcp_null',
      desc: '',
      args: [],
    );
  }

  /// `获取失败！`
  String get sy_source_fail {
    return Intl.message(
      '获取失败！',
      name: 'sy_source_fail',
      desc: '',
      args: [],
    );
  }

  /// `（未知）`
  String get sy_unknown {
    return Intl.message(
      '（未知）',
      name: 'sy_unknown',
      desc: '',
      args: [],
    );
  }

  /// `保密`
  String get sy_gender_unknown {
    return Intl.message(
      '保密',
      name: 'sy_gender_unknown',
      desc: '',
      args: [],
    );
  }

  /// `我的资料`
  String get sy_user_infor {
    return Intl.message(
      '我的资料',
      name: 'sy_user_infor',
      desc: '',
      args: [],
    );
  }

  /// `性别`
  String get sy_gender {
    return Intl.message(
      '性别',
      name: 'sy_gender',
      desc: '',
      args: [],
    );
  }

  /// `男`
  String get sy_male {
    return Intl.message(
      '男',
      name: 'sy_male',
      desc: '',
      args: [],
    );
  }

  /// `女`
  String get sy_female {
    return Intl.message(
      '女',
      name: 'sy_female',
      desc: '',
      args: [],
    );
  }

  /// `签名`
  String get sy_signature {
    return Intl.message(
      '签名',
      name: 'sy_signature',
      desc: '',
      args: [],
    );
  }

  /// `修改成功！`
  String get sy_update_success {
    return Intl.message(
      '修改成功！',
      name: 'sy_update_success',
      desc: '',
      args: [],
    );
  }

  /// `修改失败！`
  String get sy_update_fail {
    return Intl.message(
      '修改失败！',
      name: 'sy_update_fail',
      desc: '',
      args: [],
    );
  }

  /// `修改昵称`
  String get sy_update_nick_name {
    return Intl.message(
      '修改昵称',
      name: 'sy_update_nick_name',
      desc: '',
      args: [],
    );
  }

  /// `修改签名`
  String get sy_update_signature {
    return Intl.message(
      '修改签名',
      name: 'sy_update_signature',
      desc: '',
      args: [],
    );
  }

  /// `内容不能为空，请重试！`
  String get sy_null_tip {
    return Intl.message(
      '内容不能为空，请重试！',
      name: 'sy_null_tip',
      desc: '',
      args: [],
    );
  }

  /// `图片设置`
  String get sy_head_image_setting {
    return Intl.message(
      '图片设置',
      name: 'sy_head_image_setting',
      desc: '',
      args: [],
    );
  }

  /// `相册`
  String get sy_photo_album {
    return Intl.message(
      '相册',
      name: 'sy_photo_album',
      desc: '',
      args: [],
    );
  }

  /// `拍照`
  String get sy_Photograph {
    return Intl.message(
      '拍照',
      name: 'sy_Photograph',
      desc: '',
      args: [],
    );
  }

  /// `头像`
  String get sy_head_image {
    return Intl.message(
      '头像',
      name: 'sy_head_image',
      desc: '',
      args: [],
    );
  }

  /// `注册成功，请登录！`
  String get sy_register_success {
    return Intl.message(
      '注册成功，请登录！',
      name: 'sy_register_success',
      desc: '',
      args: [],
    );
  }

  /// `用户名/手机号`
  String get sy_search_key_word {
    return Intl.message(
      '用户名/手机号',
      name: 'sy_search_key_word',
      desc: '',
      args: [],
    );
  }

  /// `下载失败！`
  String get sy_download_fail {
    return Intl.message(
      '下载失败！',
      name: 'sy_download_fail',
      desc: '',
      args: [],
    );
  }

  /// `未知失败！`
  String get sy_download_fail_unknown {
    return Intl.message(
      '未知失败！',
      name: 'sy_download_fail_unknown',
      desc: '',
      args: [],
    );
  }

  /// `请打开权限！`
  String get sy_permission_granted_error {
    return Intl.message(
      '请打开权限！',
      name: 'sy_permission_granted_error',
      desc: '',
      args: [],
    );
  }

  /// `正在安装...`
  String get sy_installing {
    return Intl.message(
      '正在安装...',
      name: 'sy_installing',
      desc: '',
      args: [],
    );
  }

  /// `立即更新`
  String get sy_update {
    return Intl.message(
      '立即更新',
      name: 'sy_update',
      desc: '',
      args: [],
    );
  }

  /// `正在下载...`
  String get sy_downloading {
    return Intl.message(
      '正在下载...',
      name: 'sy_downloading',
      desc: '',
      args: [],
    );
  }

  /// `未找到您手机上安装的微信，请下载后重试！`
  String get sy_wechat_uninstall_tip {
    return Intl.message(
      '未找到您手机上安装的微信，请下载后重试！',
      name: 'sy_wechat_uninstall_tip',
      desc: '',
      args: [],
    );
  }

  /// `用户取消！`
  String get sy_wechat_err_user_cancel {
    return Intl.message(
      '用户取消！',
      name: 'sy_wechat_err_user_cancel',
      desc: '',
      args: [],
    );
  }

  /// `用户拒绝授权！`
  String get sy_wechat_err_auth_denied {
    return Intl.message(
      '用户拒绝授权！',
      name: 'sy_wechat_err_auth_denied',
      desc: '',
      args: [],
    );
  }

  /// `步数`
  String get sy_step_count {
    return Intl.message(
      '步数',
      name: 'sy_step_count',
      desc: '',
      args: [],
    );
  }

  /// `对称性`
  String get sy_symmetry {
    return Intl.message(
      '对称性',
      name: 'sy_symmetry',
      desc: '',
      args: [],
    );
  }

  /// `开始`
  String get sy_start {
    return Intl.message(
      '开始',
      name: 'sy_start',
      desc: '',
      args: [],
    );
  }

  /// `选择训练课程`
  String get sy_select_train_class_title {
    return Intl.message(
      '选择训练课程',
      name: 'sy_select_train_class_title',
      desc: '',
      args: [],
    );
  }

  /// `已连接`
  String get sy_connected {
    return Intl.message(
      '已连接',
      name: 'sy_connected',
      desc: '',
      args: [],
    );
  }

  /// `未连接`
  String get sy_unconnected {
    return Intl.message(
      '未连接',
      name: 'sy_unconnected',
      desc: '',
      args: [],
    );
  }

  /// `连接中`
  String get sy_connecting {
    return Intl.message(
      '连接中',
      name: 'sy_connecting',
      desc: '',
      args: [],
    );
  }

  /// `待机`
  String get sy_standby {
    return Intl.message(
      '待机',
      name: 'sy_standby',
      desc: '',
      args: [],
    );
  }

  /// `工作中`
  String get sy_working {
    return Intl.message(
      '工作中',
      name: 'sy_working',
      desc: '',
      args: [],
    );
  }

  /// `扫描设备`
  String get sy_device_scanner {
    return Intl.message(
      '扫描设备',
      name: 'sy_device_scanner',
      desc: '',
      args: [],
    );
  }

  /// `扫描设备失败！`
  String get sy_device_scanner_fail {
    return Intl.message(
      '扫描设备失败！',
      name: 'sy_device_scanner_fail',
      desc: '',
      args: [],
    );
  }

  /// `正在连接设备中...`
  String get sy_ble_connecting_tip {
    return Intl.message(
      '正在连接设备中...',
      name: 'sy_ble_connecting_tip',
      desc: '',
      args: [],
    );
  }

  /// `设备连接失败，请重试！`
  String get sy_ble_connect_fail {
    return Intl.message(
      '设备连接失败，请重试！',
      name: 'sy_ble_connect_fail',
      desc: '',
      args: [],
    );
  }

  /// `蓝牙服务没有打开，请重试！`
  String get sy_ble_open_tip {
    return Intl.message(
      '蓝牙服务没有打开，请重试！',
      name: 'sy_ble_open_tip',
      desc: '',
      args: [],
    );
  }

  /// `设备连接成功！`
  String get sy_ble_connect_success {
    return Intl.message(
      '设备连接成功！',
      name: 'sy_ble_connect_success',
      desc: '',
      args: [],
    );
  }

  /// `请打开摄像头权限！`
  String get sy_permission_camera_error {
    return Intl.message(
      '请打开摄像头权限！',
      name: 'sy_permission_camera_error',
      desc: '',
      args: [],
    );
  }

  /// `未搜索到{name}设备，请查看设备详情！`
  String sy_found_fail(Object name) {
    return Intl.message(
      '未搜索到$name设备，请查看设备详情！',
      name: 'sy_found_fail',
      desc: '',
      args: [name],
    );
  }

  /// `训练中`
  String get sy_training {
    return Intl.message(
      '训练中',
      name: 'sy_training',
      desc: '',
      args: [],
    );
  }

  /// `暂停`
  String get sy_pause {
    return Intl.message(
      '暂停',
      name: 'sy_pause',
      desc: '',
      args: [],
    );
  }

  /// `结束`
  String get sy_end {
    return Intl.message(
      '结束',
      name: 'sy_end',
      desc: '',
      args: [],
    );
  }

  /// `配速 step/min`
  String get sy_space {
    return Intl.message(
      '配速 step/min',
      name: 'sy_space',
      desc: '',
      args: [],
    );
  }

  /// `继续`
  String get sy_goon {
    return Intl.message(
      '继续',
      name: 'sy_goon',
      desc: '',
      args: [],
    );
  }

  /// `确认结束训练吗？`
  String get sy_end_train_tip {
    return Intl.message(
      '确认结束训练吗？',
      name: 'sy_end_train_tip',
      desc: '',
      args: [],
    );
  }

  /// `热点设备连接成功！`
  String get sy_wlan_connect_success {
    return Intl.message(
      '热点设备连接成功！',
      name: 'sy_wlan_connect_success',
      desc: '',
      args: [],
    );
  }

  /// `音乐`
  String get sy_music {
    return Intl.message(
      '音乐',
      name: 'sy_music',
      desc: '',
      args: [],
    );
  }

  /// `停止`
  String get sy_stop {
    return Intl.message(
      '停止',
      name: 'sy_stop',
      desc: '',
      args: [],
    );
  }

  /// `设备已连接!`
  String get sy_device_connecting {
    return Intl.message(
      '设备已连接!',
      name: 'sy_device_connecting',
      desc: '',
      args: [],
    );
  }

  /// `步`
  String get sy_tep_title {
    return Intl.message(
      '步',
      name: 'sy_tep_title',
      desc: '',
      args: [],
    );
  }

  /// `功率`
  String get sy_power {
    return Intl.message(
      '功率',
      name: 'sy_power',
      desc: '',
      args: [],
    );
  }

  /// `左扭矩`
  String get sy_left_torque {
    return Intl.message(
      '左扭矩',
      name: 'sy_left_torque',
      desc: '',
      args: [],
    );
  }

  /// `右扭矩`
  String get sy_right_torque {
    return Intl.message(
      '右扭矩',
      name: 'sy_right_torque',
      desc: '',
      args: [],
    );
  }

  /// `左`
  String get sy_left {
    return Intl.message(
      '左',
      name: 'sy_left',
      desc: '',
      args: [],
    );
  }

  /// `右`
  String get sy_right {
    return Intl.message(
      '右',
      name: 'sy_right',
      desc: '',
      args: [],
    );
  }

  /// `删除`
  String get sy_delete {
    return Intl.message(
      '删除',
      name: 'sy_delete',
      desc: '',
      args: [],
    );
  }

  /// `更改`
  String get sy_update_title {
    return Intl.message(
      '更改',
      name: 'sy_update_title',
      desc: '',
      args: [],
    );
  }

  /// `添加设备`
  String get sy_add_device {
    return Intl.message(
      '添加设备',
      name: 'sy_add_device',
      desc: '',
      args: [],
    );
  }

  /// `共{count}个设备`
  String sy_device_total(Object count) {
    return Intl.message(
      '共$count个设备',
      name: 'sy_device_total',
      desc: '',
      args: [count],
    );
  }

  /// `开发者模式`
  String get sy_developer_model {
    return Intl.message(
      '开发者模式',
      name: 'sy_developer_model',
      desc: '',
      args: [],
    );
  }

  /// `模式`
  String get sy_select_model {
    return Intl.message(
      '模式',
      name: 'sy_select_model',
      desc: '',
      args: [],
    );
  }

  /// `发布版`
  String get sy_release_model {
    return Intl.message(
      '发布版',
      name: 'sy_release_model',
      desc: '',
      args: [],
    );
  }

  /// `内测版`
  String get sy_debug_model {
    return Intl.message(
      '内测版',
      name: 'sy_debug_model',
      desc: '',
      args: [],
    );
  }

  /// `更换开发者模式需要重新登录，是否退出？`
  String get sy_change_developer_model_tip {
    return Intl.message(
      '更换开发者模式需要重新登录，是否退出？',
      name: 'sy_change_developer_model_tip',
      desc: '',
      args: [],
    );
  }

  /// `目标：{goal}km`
  String sy_goal_distance(Object goal) {
    return Intl.message(
      '目标：${goal}km',
      name: 'sy_goal_distance',
      desc: '',
      args: [goal],
    );
  }

  /// `添加训练用户`
  String get sy_add_train_user {
    return Intl.message(
      '添加训练用户',
      name: 'sy_add_train_user',
      desc: '',
      args: [],
    );
  }

  /// `姓名`
  String get sy_name {
    return Intl.message(
      '姓名',
      name: 'sy_name',
      desc: '',
      args: [],
    );
  }

  /// `是否添加新训练用户？`
  String get sy_add_new_user {
    return Intl.message(
      '是否添加新训练用户？',
      name: 'sy_add_new_user',
      desc: '',
      args: [],
    );
  }

  /// `训练用户添加成功！`
  String get sy_add_train_user_success_tip {
    return Intl.message(
      '训练用户添加成功！',
      name: 'sy_add_train_user_success_tip',
      desc: '',
      args: [],
    );
  }

  /// `训练用户添加失败！`
  String get sy_add_train_user_fail_tip {
    return Intl.message(
      '训练用户添加失败！',
      name: 'sy_add_train_user_fail_tip',
      desc: '',
      args: [],
    );
  }

  /// `请重新录制！`
  String get sy_record_tip {
    return Intl.message(
      '请重新录制！',
      name: 'sy_record_tip',
      desc: '',
      args: [],
    );
  }

  /// `出生日期`
  String get sy_birthday {
    return Intl.message(
      '出生日期',
      name: 'sy_birthday',
      desc: '',
      args: [],
    );
  }

  /// `扭矩`
  String get sy_torque {
    return Intl.message(
      '扭矩',
      name: 'sy_torque',
      desc: '',
      args: [],
    );
  }

  /// `参数设置`
  String get sy_setting_title {
    return Intl.message(
      '参数设置',
      name: 'sy_setting_title',
      desc: '',
      args: [],
    );
  }

  /// `总力度`
  String get sy_total_dynamism {
    return Intl.message(
      '总力度',
      name: 'sy_total_dynamism',
      desc: '',
      args: [],
    );
  }

  /// `Assistance (kg)`
  String get sy_assistance_title {
    return Intl.message(
      'Assistance (kg)',
      name: 'sy_assistance_title',
      desc: '',
      args: [],
    );
  }

  /// `Motor Power`
  String get sy_motor_power {
    return Intl.message(
      'Motor Power',
      name: 'sy_motor_power',
      desc: '',
      args: [],
    );
  }

  /// `Hip mobility`
  String get sy_hip_mobility {
    return Intl.message(
      'Hip mobility',
      name: 'sy_hip_mobility',
      desc: '',
      args: [],
    );
  }

  /// `左髋`
  String get sy_left_hip {
    return Intl.message(
      '左髋',
      name: 'sy_left_hip',
      desc: '',
      args: [],
    );
  }

  /// `右髋`
  String get sy_right_hip {
    return Intl.message(
      '右髋',
      name: 'sy_right_hip',
      desc: '',
      args: [],
    );
  }

  /// `实时数据`
  String get sy_realTime_data {
    return Intl.message(
      '实时数据',
      name: 'sy_realTime_data',
      desc: '',
      args: [],
    );
  }

  /// `参数调节`
  String get sy_parameter_settings {
    return Intl.message(
      '参数调节',
      name: 'sy_parameter_settings',
      desc: '',
      args: [],
    );
  }

  /// `是否断开{name}连接？`
  String sy_disconnect_tip(Object name) {
    return Intl.message(
      '是否断开$name连接？',
      name: 'sy_disconnect_tip',
      desc: '',
      args: [name],
    );
  }

  /// `{name}设备已断开连接！`
  String sy_device_disconnect_tip(Object name) {
    return Intl.message(
      '$name设备已断开连接！',
      name: 'sy_device_disconnect_tip',
      desc: '',
      args: [name],
    );
  }

  /// `{name}设备连接成功！`
  String sy_device_connect_success_tip(Object name) {
    return Intl.message(
      '$name设备连接成功！',
      name: 'sy_device_connect_success_tip',
      desc: '',
      args: [name],
    );
  }

  /// `断开`
  String get sy_disconnect {
    return Intl.message(
      '断开',
      name: 'sy_disconnect',
      desc: '',
      args: [],
    );
  }

  /// `请添加设备！`
  String get sy_binding_device_tip {
    return Intl.message(
      '请添加设备！',
      name: 'sy_binding_device_tip',
      desc: '',
      args: [],
    );
  }

  /// `动力外甲状态`
  String get sy_product_status_title {
    return Intl.message(
      '动力外甲状态',
      name: 'sy_product_status_title',
      desc: '',
      args: [],
    );
  }

  /// `速度`
  String get sy_speed_title {
    return Intl.message(
      '速度',
      name: 'sy_speed_title',
      desc: '',
      args: [],
    );
  }

  /// `更改目标`
  String get sy_change_target {
    return Intl.message(
      '更改目标',
      name: 'sy_change_target',
      desc: '',
      args: [],
    );
  }

  /// `训练时间`
  String get sy_train_time {
    return Intl.message(
      '训练时间',
      name: 'sy_train_time',
      desc: '',
      args: [],
    );
  }

  /// `训练步数`
  String get sy_train_distance {
    return Intl.message(
      '训练步数',
      name: 'sy_train_distance',
      desc: '',
      args: [],
    );
  }

  /// `目标配速`
  String get sy_train_speed {
    return Intl.message(
      '目标配速',
      name: 'sy_train_speed',
      desc: '',
      args: [],
    );
  }

  /// `训练时间（分钟）`
  String get sy_train_time_unit {
    return Intl.message(
      '训练时间（分钟）',
      name: 'sy_train_time_unit',
      desc: '',
      args: [],
    );
  }

  /// `训练步数（步）`
  String get sy_train_distance_unit {
    return Intl.message(
      '训练步数（步）',
      name: 'sy_train_distance_unit',
      desc: '',
      args: [],
    );
  }

  /// `目标配速（米/秒）`
  String get sy_train_speed_unit {
    return Intl.message(
      '目标配速（米/秒）',
      name: 'sy_train_speed_unit',
      desc: '',
      args: [],
    );
  }

  /// `我今天要练够{trainTime}分钟`
  String sy_train_time_des(Object trainTime) {
    return Intl.message(
      '我今天要练够$trainTime分钟',
      name: 'sy_train_time_des',
      desc: '',
      args: [trainTime],
    );
  }

  /// `我今天要走{trainDistance}步`
  String sy_train_distance_des(Object trainDistance) {
    return Intl.message(
      '我今天要走$trainDistance步',
      name: 'sy_train_distance_des',
      desc: '',
      args: [trainDistance],
    );
  }

  /// `我今天要走到{trainSpeed}m/s`
  String sy_train_speed_des(Object trainSpeed) {
    return Intl.message(
      '我今天要走到${trainSpeed}m/s',
      name: 'sy_train_speed_des',
      desc: '',
      args: [trainSpeed],
    );
  }

  /// `请添加训练时间！`
  String get sy_train_time_tip {
    return Intl.message(
      '请添加训练时间！',
      name: 'sy_train_time_tip',
      desc: '',
      args: [],
    );
  }

  /// `请添加训练步数！`
  String get sy_train_distance_tip {
    return Intl.message(
      '请添加训练步数！',
      name: 'sy_train_distance_tip',
      desc: '',
      args: [],
    );
  }

  /// `请添加目标配速！`
  String get sy_train_speed_tip {
    return Intl.message(
      '请添加目标配速！',
      name: 'sy_train_speed_tip',
      desc: '',
      args: [],
    );
  }

  /// `目标：{goal}`
  String sy_goal_title(Object goal) {
    return Intl.message(
      '目标：$goal',
      name: 'sy_goal_title',
      desc: '',
      args: [goal],
    );
  }

  /// `点击更改目标`
  String get sy_click_goal {
    return Intl.message(
      '点击更改目标',
      name: 'sy_click_goal',
      desc: '',
      args: [],
    );
  }

  /// `分钟`
  String get sy_minute {
    return Intl.message(
      '分钟',
      name: 'sy_minute',
      desc: '',
      args: [],
    );
  }

  /// `是否更改训练课程目标？`
  String get sy_update_train_class {
    return Intl.message(
      '是否更改训练课程目标？',
      name: 'sy_update_train_class',
      desc: '',
      args: [],
    );
  }

  /// `是否删除{device}设备？`
  String sy_delete_device_tip(Object device) {
    return Intl.message(
      '是否删除$device设备？',
      name: 'sy_delete_device_tip',
      desc: '',
      args: [device],
    );
  }

  /// `请开启位置定位权限！`
  String get sy_location_permission_tip {
    return Intl.message(
      '请开启位置定位权限！',
      name: 'sy_location_permission_tip',
      desc: '',
      args: [],
    );
  }

  /// `请开启媒体文件读写权限！`
  String get sy_read_write_permission_tip {
    return Intl.message(
      '请开启媒体文件读写权限！',
      name: 'sy_read_write_permission_tip',
      desc: '',
      args: [],
    );
  }

  /// `Unlock`
  String get sy_unlock {
    return Intl.message(
      'Unlock',
      name: 'sy_unlock',
      desc: '',
      args: [],
    );
  }

  /// `Lock`
  String get sy_lock {
    return Intl.message(
      'Lock',
      name: 'sy_lock',
      desc: '',
      args: [],
    );
  }

  /// `请先解锁车辆！`
  String get sy_unlock_tip {
    return Intl.message(
      '请先解锁车辆！',
      name: 'sy_unlock_tip',
      desc: '',
      args: [],
    );
  }

  /// `Tesla`
  String get str_tesla {
    return Intl.message(
      'Tesla',
      name: 'str_tesla',
      desc: '',
      args: [],
    );
  }

  /// `187 km`
  String get str_km187 {
    return Intl.message(
      '187 km',
      name: 'str_km187',
      desc: '',
      args: [],
    );
  }

  /// `Control`
  String get str_control {
    return Intl.message(
      'Control',
      name: 'str_control',
      desc: '',
      args: [],
    );
  }

  /// `Climate`
  String get str_climate {
    return Intl.message(
      'Climate',
      name: 'str_climate',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get str_location {
    return Intl.message(
      'Location',
      name: 'str_location',
      desc: '',
      args: [],
    );
  }

  /// `Schedule`
  String get str_schedule {
    return Intl.message(
      'Schedule',
      name: 'str_schedule',
      desc: '',
      args: [],
    );
  }

  /// `Interior 20° C`
  String get str_interior20 {
    return Intl.message(
      'Interior 20° C',
      name: 'str_interior20',
      desc: '',
      args: [],
    );
  }

  /// `81 rue St-Chales`
  String get str_rue81StChales {
    return Intl.message(
      '81 rue St-Chales',
      name: 'str_rue81StChales',
      desc: '',
      args: [],
    );
  }

  /// `30° C`
  String get str_c30 {
    return Intl.message(
      '30° C',
      name: 'str_c30',
      desc: '',
      args: [],
    );
  }

  /// `Ac`
  String get str_ac {
    return Intl.message(
      'Ac',
      name: 'str_ac',
      desc: '',
      args: [],
    );
  }

  /// `Fan`
  String get str_fan {
    return Intl.message(
      'Fan',
      name: 'str_fan',
      desc: '',
      args: [],
    );
  }

  /// `Heat`
  String get str_heat {
    return Intl.message(
      'Heat',
      name: 'str_heat',
      desc: '',
      args: [],
    );
  }

  /// `Auto`
  String get str_auto {
    return Intl.message(
      'Auto',
      name: 'str_auto',
      desc: '',
      args: [],
    );
  }

  /// `On`
  String get str_on {
    return Intl.message(
      'On',
      name: 'str_on',
      desc: '',
      args: [],
    );
  }

  /// `Vent`
  String get str_vent {
    return Intl.message(
      'Vent',
      name: 'str_vent',
      desc: '',
      args: [],
    );
  }

  /// `20°`
  String get str_c20 {
    return Intl.message(
      '20°',
      name: 'str_c20',
      desc: '',
      args: [],
    );
  }

  /// `Charging`
  String get str_charging {
    return Intl.message(
      'Charging',
      name: 'str_charging',
      desc: '',
      args: [],
    );
  }

  /// `Set Charge Limit`
  String get str_setChargeLimit {
    return Intl.message(
      'Set Charge Limit',
      name: 'str_setChargeLimit',
      desc: '',
      args: [],
    );
  }

  /// `Nearby Superchargers`
  String get str_nearbySuperchargers {
    return Intl.message(
      'Nearby Superchargers',
      name: 'str_nearbySuperchargers',
      desc: '',
      args: [],
    );
  }

  /// `Tesla Supercharger -Montreal, QC `
  String get str_teslaSuperchargerMontreal {
    return Intl.message(
      'Tesla Supercharger -Montreal, QC ',
      name: 'str_teslaSuperchargerMontreal',
      desc: '',
      args: [],
    );
  }

  /// `2 / 4 available`
  String get str_available2_4 {
    return Intl.message(
      '2 / 4 available',
      name: 'str_available2_4',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

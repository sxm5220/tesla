import 'package:permission_handler/permission_handler.dart';

import '../utils/sy_public_util.dart';

///系统权限申请
class SyPermission {
  ///Android
  /// 动态申请搜索附近ble权限
  static Future<void> bluetoothScanAndroidPermission() async {
    var statusBle = await Permission.bluetooth.status;
    if (!statusBle.isGranted) {
      statusBle = await Permission.bluetooth.request();
    }
    syPrint(statusBle.isGranted ? 'ble权限申请通过' : 'ble权限申请不通过');

    var statusBleScan = await Permission.bluetoothScan.status;
    if (!statusBleScan.isGranted) {
      statusBleScan = await Permission.bluetoothScan.request();
    }
    syPrint(statusBleScan.isGranted ? "搜索ble权限申请通过" : "搜索ble权限申请不通过");

    var statusBleAdvertise = await Permission.bluetoothAdvertise.status;
    if (!statusBleAdvertise.isGranted) {
      statusBleAdvertise = await Permission.bluetoothAdvertise.request();
    }
    syPrint(statusBleAdvertise.isGranted
        ? 'statusBleAdvertise success'
        : 'statusBleAdvertise fail');

    var statusBleConnect = await Permission.bluetoothConnect.status;
    if (!statusBleConnect.isGranted) {
      statusBleConnect = await Permission.bluetoothConnect.request();
    }
    syPrint(statusBleConnect.isGranted
        ? 'statusBleConnect success'
        : 'statusBleConnect fail');
  }

  /// 动态申请定位权限
  static Future<bool> locationAndroidPermission() async {
    syPrint('请求获取定位权限，可以进行蓝牙扫描等操作');
    /*var status = await Permission.location.status;
    if (status.isGranted) return true;
    status = await Permission.location.request();
    return status.isGranted;*/
    bool isLocationPermission = false;
    // 检查定位权限
    PermissionStatus status = await Permission.location.status;
    // isDenied 用户拒绝访问请求的功能
    if (status.isDenied) {
      // 请求定位权限
      PermissionStatus result = await Permission.location.request();
      if (result.isPermanentlyDenied) {
        // 权限被永久拒绝，弹出对话框引导用户到应用设置页面
        isLocationPermission = false;
      }
    } else if (status.isPermanentlyDenied) {
      // 用户永久拒绝了权限，弹出对话框引导用户到应用设置页面
      isLocationPermission = false;
    } else {
      // 已经有权限
      syPrint('已经有定位权限');
      isLocationPermission = true;
    }
    return isLocationPermission;
  }

  ///请求获取本地目录读写权限
  static Future<bool> requestStoragePermission() async {
    bool isStoragePermission = false;
    // 检查读写权限
    PermissionStatus status = await Permission.storage.status;
    // isDenied 用户拒绝访问请求的功能
    if (status.isDenied) {
      // 请求读写权限
      PermissionStatus result = await Permission.storage.request();
      if (result.isPermanentlyDenied) {
        // 权限被永久拒绝，弹出对话框引导用户到应用设置页面
        isStoragePermission = false;
      }
    } else if (status.isPermanentlyDenied) {
      syPrint('读写==2');
      // 用户永久拒绝了权限，弹出对话框引导用户到应用设置页面
      isStoragePermission = false;
    } else {
      // 已经有权限
      syPrint('已经有读写权限');
      isStoragePermission = true;
    }
    return isStoragePermission;
  }
}

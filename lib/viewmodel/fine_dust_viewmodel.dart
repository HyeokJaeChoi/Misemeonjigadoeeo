import 'package:geolocator/geolocator.dart';
import 'package:misemeonjigadoeeo/response/fine_dust_response.dart';
import 'package:misemeonjigadoeeo/service/fine_dust_service.dart';

import 'base_viewmodel.dart';

mixin FineDustViewModel on BaseViewModel {

  FineDustService fineDustService = FineDustService();
  FineDustResponse fineDustResponse;

  getFineDustInfo(Position pos) async {
    isLoaded = false;
    fineDustResponse = await fineDustService.getFineDustInfoByLatLng(pos);
    isLoaded = true;
    notifyListeners();
  }
}

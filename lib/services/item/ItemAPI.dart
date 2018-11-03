import 'package:wat_i_want/models/item.dart';
import 'package:wat_i_want/services/DownloadService.dart';
import 'package:wat_i_want/utils/ItemParser.dart';

class ItemAPI {

  Future<List<Item>> getAll() async{
    return ItemParser.parseCollection(await WIWRestService.get("http://archlinux:9012/v1/item"));
  }

}
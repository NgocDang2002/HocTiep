import 'package:flutter_1_tao_khung_suon_project_va_lop_model/data/model/song.dart';
import 'package:flutter_1_tao_khung_suon_project_va_lop_model/data/source/source.dart';

abstract interface class Repository {
  Future<List<Song>?> loadData();
}

class DefaltRepository implements Repository {
  final _localDataSource = LocalDataSource();
  final _remoteDataSourc = RemoDataSource();

  @override
  Future<List<Song>?> loadData() async {
    List<Song> songs = [];
    await _remoteDataSourc.loadData().then((remoteSongs) => {
          if (remoteSongs == null)
            {
              _localDataSource.loadData().then((localSong) {
                if (localSong != null) {}
              })
            }
        });

    return songs;
  }
}

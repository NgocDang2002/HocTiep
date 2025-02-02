class User {
  // Khai báo thuộc tính
  // late int
  //     id; // khai báo gán giá trị sau này cho , sử dụng late , ? , User(this.id, this.name); (Construcor)
  // late String name;
  // // cách 1
  // //(Construcor)
  // // User(int id, String name) {
  // //   this.id = id;
  // //   this.name = name;
  // // }
  // // cách 2
  // // User(this.id, this.name);

  // // User.name(this.id, this.name);

  // // cách 1
  // // User({this.id = 1, this.name = 'hoa'}); // có thể đặt vị trí ở đâu cũng được

  // // cách 2
  // // User(
  // //     {required this.id,
  // //     required this.name}); // hàm bắt buộc phải chuyển tham số

  // User(this.id,
  //     [this.name =
  //         'ccc']); // có thể chuyền hoặc không cần chuyển giá trị trong ngoăc User user = User(6);
  // @override
  // String toString() {
  //   return '$id - $name';
  // }

//--------------private và public-----------------------------------------
// public có thể truy suất từ class bên ngoài.
  // int id = 0;
  // String name = 'default';

  // User(this.id, this.name);
// private chỉ có thể truy suất trong class.
  // int _id = 0;
  // String _name = 'default';

  // User(this._id, this._name);

  // int get id => _id;

  // set id(int value) {
  //   _id = value;
  // }

  // String get name => _name;

  // set name(String value) {
  //   _name = value;
  // }

  // @override
  // String toString() {
  //   return '$_id - $_name';
  // }

  // void logInfor() {
  //   print('Đăng');
  // }
}

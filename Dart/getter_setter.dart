// Getter - setter trong dart - DART #13 - Beginner | Lập trình Dart
// Getter: Dùng để lấy giá trị của một thuộc tính trong class.
// Setter: Dùng để gán giá trị cho một thuộc tính trong class và có thể kèm theo logic kiểm tra
main(List<String> args) {
  var emp = Employee(19); // Tạo một đối tượng Employee với tuổi ban đầu là 19
  emp.age = 10; // Gán giá trị 10 cho age (sẽ bị chặn bởi setter)
  print(emp.age); // In ra giá trị age (vẫn là 19 do setter không cập nhật)
}

class Employee {
  int _age = 0;

  Employee(this._age); // Constructor khởi tạo giá trị _age

  // Setter dùng để gán giá trị cho thuộc tính _age
  set age(value) {
    if (value <= 18) {
      // Kiểm tra nếu giá trị nhỏ hơn hoặc bằng 18
      print('Tuổi lớn hơn 18'); // In ra thông báo nếu giá trị không hợp lệ
    } else {
      this._age = value; // Nếu hợp lệ, cập nhật giá trị _age
    }
  }

  // Getter dùng để lấy giá trị của thuộc tính _age
  int get age {
    return this._age; // Trả về giá trị của _age
  }
}

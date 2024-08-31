class Person{
  late String _name;
  late String _email;
  late int _age;
  late double _hieght ;

  String getname() => _name;

  void setname(String value) {
    this._name = value;
  }

  late  String _grade;

  String getemail()  => _email;

  void setemail(String value) {
    this._email = value;
  }

  int getage()  => _age;

  void setage(int value) {
    this._age = value;
  }

  double gethieght()  => _hieght;

  void sethieght(double value) {
    this._hieght = value;
  }

  String getgrade()  => _grade;

  void setgrade(String value) {
    this._grade = value;
  }
  void eat(){
    print('person est');
  }
}
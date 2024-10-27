abstract interface class Area{
  void area();
}

abstract interface class Perimeter{
  void perimeter();
}

class Rectangle implements Area, Perimeter{
  int dim1,dim2;
  Rectangle({required this.dim1,required this.dim2});
  @override
  void area() =>print('Area = ${dim1*dim2}');

  @override
  void perimeter() =>print('Perimeter = ${2*(dim1+dim2)}');
}
void main(List<String> arguments) {
  Rectangle rectangle =Rectangle(dim1: 10, dim2: 20);
  rectangle.area();
  rectangle.perimeter();

}

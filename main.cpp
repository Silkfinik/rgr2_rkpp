#include "../src/funcs.cpp"

int main() {
  KPolynomial a(4);
  a.setElem(0, 1);
  a.setElem(1, -4);
  a.setElem(2, 4);
  a.setElem(3, -8);
  KPolynomial b(2);
  b.setElem(0, 1);
  b.setElem(1, 2);
  std::cout << b.Degree() << std::endl;

  std::cout << a << std::endl;
  std::cout << find2(a, -8) << std::endl;
  std::cout << b << std::endl;
  std::cout << std::endl;

  KPolynomial c = a * b;
  std::cout << c << std::endl;

  a *= b;
  std::cout << a << std::endl;

  std::cout << a.Count() << std::endl;
}
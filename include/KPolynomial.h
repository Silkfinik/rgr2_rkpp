#ifndef KPOLYNOMIAL_H
#define KPOLYNOMIAL_H

#include <cstdint>
#include <iostream>
#include <stdexcept>

typedef std::int16_t int_;

class KPolynomial {
 private:
  int_ length;
  int_* data;

 public:
  KPolynomial(int_ length_);

  ~KPolynomial() { delete[] data; }

  void setElem(int_ index, int_ data_);

  int_ getLength() const { return length; }
  int_ getData(int_ index) const { return data[index]; }

  int_ Degree() const;
  int_ Count() const;
  void Clear();

  KPolynomial& operator=(const KPolynomial& other);

  KPolynomial& operator+(const KPolynomial& other);
  KPolynomial& operator+=(const KPolynomial& other);

  KPolynomial operator*(const KPolynomial& other);
  KPolynomial& operator*=(const KPolynomial& other);

  class myItr {
   private:
    int_ index;
    const KPolynomial& pol;

   public:
    myItr(const int_& index, const KPolynomial& pol_)
        : index(index), pol(pol_) {}

    int_ operator*() const { return pol.getData(index); }
    void operator++() { ++index; }
    bool operator!=(const myItr& other) const { return index != other.index; }

    int_ getValue() const { return pol.getData(index); }
    void next() { ++index; }
    bool isNotEqual(const myItr& other) const { return index != other.index; }
  };

  myItr begin() const { return myItr(0, *this); }
  myItr end() const { return myItr(length, *this); }
};

#endif  // KPOLYNOMIAL_H
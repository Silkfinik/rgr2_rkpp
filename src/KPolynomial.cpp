#include "../include/KPolynomial.h"

#include <cstdint>
#include <ostream>

void KPolynomial::setElem(int_ index, int_ data_) {
  try {
    if (index < 0 || index >= length) {
      throw std::out_of_range("Invalid index");
    } else {
      data[index] = data_;
    }
  } catch (std::out_of_range &err) {
    std::cerr << err.what() << std::endl;
  }
}

KPolynomial::KPolynomial(int_ length_) : length(length_) {
  try {
    if (length <= 0) {
      throw std::length_error("Invalid length");
    } else {
      data = new int_[length];
    }
  } catch (std::length_error &err) {
    std::cerr << err.what() << std::endl;
  }
}

int_ KPolynomial::Degree() const {
  for (int_ i = length - 1; i >= 0; --i) {
    if (data[i] != 0) {
      return i;
    }
  }

  return 0;
}

int_ KPolynomial::Count() const {
  int_ count = 0;
  for (int_ i = 0; i < length; ++i) {
    if (data[i] != 0) {
      ++count;
    }
  }

  return count;
}

void KPolynomial::Clear() {
  for (int_ i = 0; i < length; ++i) {
    data[i] = 0;
  }
}

KPolynomial &KPolynomial::operator=(const KPolynomial &other) {
  if (this != &other) {
    delete[] data;
    length = other.getLength();
    data = new int_[length];
    for (int_ i = 0; i < length; ++i) {
      data[i] = other.getData(i);
    }
  }

  return *this;
}

KPolynomial &KPolynomial::operator+(const KPolynomial &other) {
  int_ maxlength = length;
  if (other.getLength() > length) {
    maxlength = other.getLength();
  }
  KPolynomial *result = new KPolynomial(maxlength);
  for (int_ i = 0; i < maxlength; ++i) {
    result->setElem(i, data[i] + other.getData(i));
  }

  return *result;
}

KPolynomial &KPolynomial::operator+=(const KPolynomial &other) {
  int_ maxlength = length;
  if (other.getLength() > length) {
    maxlength = other.getLength();
  }
  for (int_ i = 0; i < maxlength; ++i) {
    data[i] += other.getData(i);
  }

  return *this;
}

KPolynomial KPolynomial::operator*(const KPolynomial &other) {
  int_ maxlength = this->Degree() + other.Degree();
  KPolynomial result(maxlength + 1);

  for (int_ i = 0; i <= this->Degree(); ++i) {
    for (int_ j = 0; j <= other.Degree(); ++j) {
      result.setElem(i + j, result.getData(i + j) + data[i] * other.getData(j));
    }
  }

  return result;
}

KPolynomial &KPolynomial::operator*=(const KPolynomial &other) {
  int_ maxlength = this->Degree() + other.Degree();
  KPolynomial result(maxlength + 1);

  for (int_ i = 0; i <= this->Degree(); ++i) {
    for (int_ j = 0; j <= other.Degree(); ++j) {
      result.setElem(i + j, result.getData(i + j) + data[i] * other.getData(j));
    }
  }

  *this = result;

  return *this;
}
// Test that an object-dependent reference to a member function can be
// used to produce a pointer to member function, as in VC++.
// Contributed by Jason Merrill <jason@cygnus.com>
// Special g++ Options: -fms-extensions

struct A
{
  int  f(int a) { }
  void f(int a, int b) { }
};

typedef int  (A::* pmf1)(int);
typedef void (A::* pmf2)(int, int);

int main()
{
  A a;
  pmf1 fn1;
  pmf2 fn2;

  fn1 = a.f; 
  fn1 = (pmf1)a.f;
  fn2 = (pmf2)a.f;
};

# Java's inconsistent reflection

I have been getting back into Java again recently. This has been prompted mostly due to Android development but I have been
looking into the desktop version as well. One of the features I really like is reflection although it is tempting to abuse it
sometimes. What has struck me though, is the inconsistency of compile time access to this feature. I can, for instance, get the Class
class using the ".class" feature but this is not possible for fields and methods. It is possible to lookup via its name but this
is a runtime check, I would much prefer a compile time check.

```
class Foo
{
  f;
  int m() { return 0; }
}

Class c = Foo.class     // This work ok
Field f = Foo.f.field   // There is no equivalent for this
Method m = Foo.m.method // There is no equivalent for this
```

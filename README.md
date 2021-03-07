# dq_rsqrt

Implements fast algorithm for approximation `1/Sqrt(x)` from Quake III Arena.
Useful for normalization of vectors, e.g.

```pascal
uses
  dq_rsqrt;

...

  R := q_rsqrt(Sqr(X) + Sqr(Y) + Sqr(Z));
  X := X * R;
  Y := Y * R;
  Z := Z * R;
```

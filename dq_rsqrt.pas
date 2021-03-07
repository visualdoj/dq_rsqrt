unit dq_rsqrt;

{$MODE FPC}
{$MODESWITCH DEFAULTPARAMETERS}
{$MODESWITCH OUT}
{$MODESWITCH RESULT}

interface

function q_rsqrt(x: Single): Single;

implementation

function q_rsqrt(x: Single): Single;
const
  threehalfs = 1.5;
var
  i: UInt32;
  x2: Single;
begin
  x2 := x * 0.5;
  i  := PUInt32(@x)^;
  i  := $5f3759df - (i shr 1);
  x := PSingle(@i)^;
  x := x * (threehalfs - (x2 * x * x)); // 1st iteration
//x := x * (threehalfs - (x2 * x * x)); // 2nd iteration, this can be removed
  Exit(x);
end;

end.

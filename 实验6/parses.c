#include "common.h"

// S->BR  select(S->BR) = {'0','1'}
b_info parseS()
{
    b_info R,R1,S;
    R1.val = parseB();
    R1.len = 1;
    R = parseR(R1.val, R1.len);
    S.val=R.val;
    S.len = R.len;
    return S;
} 
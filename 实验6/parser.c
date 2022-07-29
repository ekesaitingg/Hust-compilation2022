#include "common.h"

// R->BR | ε   select(R->BR)={'0','1'}; select(R-> ε) ={'.','\n'} 
b_info parseR(int v, int l){
    b_info R;
    if(lookahead=='\n'||lookahead == '.')
    {
        R.val = v;
        R.len = l;
        return R;
    }
    else
    {
        b_info R_tmp;
        R_tmp.val = 2*v + parseB();
        R_tmp.len = l + 1;
        return parseR(R_tmp.val, R_tmp.len);
    }
}
// 5. Bitwise operator
// 1.& (AND)         2.| (OR)           3.^ (XOR)

void main() {
  int x = 10;
  int y = 2;
  print(x);
  print(x & y); // 2
  print(x | y); // 10
  print(x ^ y); // 8
  print(x >> 1); // 5
  print(x << 1); // 20
}


/*

truth table of &(AND) is :
x y   r         x y   r
T T = T         1 1 = 1
T F = F         0 1 = 0
F T = F         1 0 = 0
F F = F         0 0 = 0

truth table of |(OR) is :
x y   r         x y   r
T T = T         1 1 = 1
T F = T         0 1 = 1
F T = T         1 0 = 1
F F = F         0 0 = 0

truth table of |(XOR) is :
x y   r         x y   r
T T = F         1 1 = 0
T F = T         0 1 = 1
F T = T         1 0 = 1
F F = F         0 0 = 0

                  binary values
1.X&y
x = 10 -->>       0000 1010                 
y = 2  -->>       0000 0010    
lets calculate :  0000 0010 -->> result value is the binary number of 2 

2.x|y =   x-> 0000 1010
          y-> 0000 0010
        x|y-> 0000 1010 -->> 10

3.x^y =   x-> 0000 1010
          y-> 0000 0010
        x^y-> 0000 1000 -->> 8  

4.x>>1 =      0000 1010
        x>>1->0000 0101

5.x<<1 =      0000 1010
        x<<1->0001 0100
*/
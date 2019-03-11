Sets
    c 'coins' / penny, nickel, dime, quarter /;
Parameters
    v(c) 'value of coin c'
      / penny      1
        nickel     5
        dime       10
        quarter    25 / ;
Scalar f 'the desired amount' /317/;
Integer Variable
    n(c)  'number of coin c used';
Variable
    count 'the total number of coins used';
Equations
    amount    'total amount'
    obj       'number of coins';
amount.. sum(c, v(c)*n(c)) =e= f;
obj..       count =e= sum(c, n(c));
Model pennies /all/;
Solve pennies using MINLP minimizing count;


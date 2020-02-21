customer('Abdulrahman Adeboye',abeokuta,good_credit).
customer('Abdulsamad Raji',offa,good_credit).
customer('Lasisi Olalekan',iwo,good_credit).
customer('Oyelami Yusuf',lagos,bad_credit).
customer('Odunaro Yinka',lagos,bad_credit).

%items for sale.
items('RI','RICE',5).
items('MIL',MILLO,12).
items('BE','BEANS'10).
items('POT','POTATO',12).

%inventory record.
inventory('RI','N50,000.OO').
inventory('MIL','N35,000.00').
inventory('BE','N15,000.00').
inventory('POT','N18,000.00').

item_quantity(X,Y):-items('RI',X,Y),write(X),nl,write(Y),fail.
good_costumer(X,Y):-customer(X,Y,good_credit),write(X),tab(2),write(Y),nl,fail.

valid_order(X,Y,Z):-customer(X,abeokuta,good_credit),items('MIL',Y,Z),write(succeeded).
valid_order(X,Y,Z).

reorder(X):-items(X,Y,13),valid_order(X,Y,Z).

reorder(X):-items(X,'RICE',6),write('Time to reorder').
reorder(X):-items(X,'RICE',5),write('Succeed').
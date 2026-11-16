# Exercise exr-qdm-sm-phi4-count: in <p3 p4| :phi^4(x): |p1 p2> each of the four fields must annihilate one incoming or create one
# outgoing particle; the number of ways to assign the four fields to the four external particles is 4! = 24, cancelling the 1/4!.
from itertools import permutations
ext = ["p1 in", "p2 in", "p3 out", "p4 out"]
assign = list(permutations(range(4)))
print("assignments of the four fields to the four particles:", len(assign), "= 4! =", factorial(4))
print("so <p3 p4|(-i lambda/4!) int :phi^4:|p1 p2> = -i lambda (2 pi)^4 delta^4(p1 + p2 - p3 - p4), and M = -lambda")

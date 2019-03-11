import Base.Order: lt;
using PolynomialRings
using Combinatorics
@ring! ℚ[p,n,d,q]
I = [p^5-n,p^10-d,p^25-q]
G = groebner_basis(I)
@show G
@show rem(p^317, G)

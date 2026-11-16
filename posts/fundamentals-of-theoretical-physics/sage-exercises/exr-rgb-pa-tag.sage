# Exercise exr-rgb-pa-tag: a cloakroom tag (disc of radius R with a hole of radius R/2 touching its rim at A) hanging from A; principal moments about A and the two frequencies of small oscillations.
m, R, g = var('m R g'); assume(m > 0, R > 0)      # m: mass of the full disc; the tag has mass 3m/4
def about_rim_point(mass, rad):
    # (normal axis, in-plane axis perpendicular to the radius through the rim point), by Steiner
    return (mass*rad^2/2 + mass*rad^2, mass*rad^2/4 + mass*rad^2)
d3, d1 = about_rim_point(m, R)
h3, h1 = about_rim_point(-m/4, R/2)                  # the hole as a disc of negative mass, centre R/2 from A
I3, I1 = d3 + h3, d1 + h1
print('I3 =', I3, ', I1 =', I1, '  (in units of the tag mass M = 3m/4:', I3/(3*m/4*R^2), 'M R^2 and', I1/(3*m/4*R^2), 'M R^2)')
# G lies below A at distance (m R - (m/4)(R/2))/(3m/4) = 7R/6; V = (3m/4) g (7R/6)(1 - cos)
hG = (m*R - m/4*R/2)/(3*m/4)
print('distance AG =', hG)
print('omega^2 in the plane =', (3*m/4*g*hG/I3).simplify_full(), ', across the plane =', (3*m/4*g*hG/I1).simplify_full())

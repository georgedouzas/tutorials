# Exercise exr-rgb-ia-book: a book 24 x 17 x 3 cm spun about each principal axis at Omega; wobble frequencies and the growth rate about the intermediate axis.
Om = var('Omega')
L1, L2, L3 = 24, 17, 3
I = sorted([(L2^2 + L3^2)/12, (L1^2 + L3^2)/12, (L1^2 + L2^2)/12])     # per unit mass, cm^2
I1, I2, I3 = I
print('principal moments per unit mass (cm^2):', [QQ(x) for x in I], '=', [N(x, digits=4) for x in I])
def s2(k):
    i, j = [x for x in range(3) if x != k]
    return (I[k] - I[i])*(I[j] - I[k])/(I[i]*I[j])
for k in range(3):
    v = s2(k)
    kind = 'growth rate' if v > 0 else 'wobble frequency'
    print('axis %d: s^2/Omega^2 = %.4f, %s = %.3f Omega' % (k + 1, N(v), kind, N(sqrt(abs(v)))))

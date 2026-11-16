# Exercise exr-rgb-lt-equinoxes: the slow precession of the Earth's axis caused by the Sun, phi_dot = -(3/2)((a - c)/a)(Omega_y^2/psi_dot) cos(theta), with Kotkin and Serbo's data.
flat = 1/300                     # (a - c)/a
theta = 23.44*pi/180             # tilt of the axis to the normal of the orbit
Om_y = 2*pi                      # rad per year
psi_dot = 2*pi*366.25            # rad per year (sidereal rotation)
phid = -(3/2)*flat*Om_y^2/psi_dot*cos(theta)
arcsec = N(phid*180/pi*3600)
print('Sun: phi_dot = %.2e rad/yr = %.1f arcsec per year' % (N(phid), arcsec))
# the Moon: replace G M_sun/R^3 = Om_y^2 by G m_moon/r^3; (m_moon/M_sun)(R/r)^3 with m_moon/M_earth = 1/81.3, M_sun/M_earth = 332946, R/r = 389.2
ratio = (1/81.3)/332946*389.2^3
print('Moon/Sun tidal ratio %.3f; Moon: %.1f arcsec per year; total %.1f arcsec per year (observed 50.3)' % (ratio, ratio*arcsec, (1 + ratio)*arcsec))
print('period of the precession for 50.3 arcsec per year: %.0f years' % (360*3600/50.3))

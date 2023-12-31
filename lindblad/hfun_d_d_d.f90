!        Generated by TAPENADE     (INRIA, Tropics team)
!  Tapenade 3.8 (r4996) - 25 Oct 2013 15:08
!
!  Differentiation of hfun_d_d in forward (tangent) mode (with options fixinterface):
!   variations   of useful results: hdd
!   with respect to varying inputs: p x
!   RW status of diff variables: p:in x:in hdd:out
!        Generated by TAPENADE     (INRIA, Tropics team)
!  Tapenade 3.8 (r4996) - 25 Oct 2013 15:08
!
!  Differentiation of hfun_d in forward (tangent) mode (with options fixinterface):
!   variations   of useful results: hd
!   with respect to varying inputs: p x
!   RW status of diff variables: p:in x:in hd:out
!        Generated by TAPENADE     (INRIA, Tropics team)
!  Tapenade 3.8 (r4996) - 25 Oct 2013 15:08
!
!  Differentiation of hfun in forward (tangent) mode (with options fixinterface):
!   variations   of useful results: h
!   with respect to varying inputs: p x
!   RW status of diff variables: h:out p:in x:in
! Lindblad
SUBROUTINE HFUN_D_D_D(x, xd1, xd0, xd, p, pd1, pd0, pd, d, h, hd, hdd, &
& hddd)
  IMPLICIT NONE
  DOUBLE PRECISION, INTENT(IN) :: x(2), p(2), d
  DOUBLE PRECISION, INTENT(IN) :: xd1(2), pd1(2)
  DOUBLE PRECISION, INTENT(IN) :: xd0(2), pd0(2)
  DOUBLE PRECISION, INTENT(IN) :: xd(2), pd(2)
  DOUBLE PRECISION, INTENT(OUT) :: h
  DOUBLE PRECISION, INTENT(OUT) :: hd
  DOUBLE PRECISION, INTENT(OUT) :: hdd
  DOUBLE PRECISION, INTENT(OUT) :: hddd
! local variables
  DOUBLE PRECISION :: r, th, pr, pth
  DOUBLE PRECISION :: rd1, prd1, pthd1
  DOUBLE PRECISION :: rd0, prd0, pthd0
  DOUBLE PRECISION :: rd, prd, pthd
  DOUBLE PRECISION :: l, m2, mu
  DOUBLE PRECISION :: m2d1
  DOUBLE PRECISION :: m2d0, mud0
  DOUBLE PRECISION :: m2d0d, mud0d
  DOUBLE PRECISION :: m2d, mud
  DOUBLE PRECISION :: m2dd0, mudd0
  DOUBLE PRECISION :: m2dd, mudd
  DOUBLE PRECISION :: m2ddd, muddd
  INTRINSIC SIN
  INTRINSIC SQRT
  DOUBLE PRECISION :: arg1
  DOUBLE PRECISION :: arg1d1
  DOUBLE PRECISION :: arg1d0
  DOUBLE PRECISION :: arg1d0d
  DOUBLE PRECISION :: arg1d
  DOUBLE PRECISION :: arg1dd0
  DOUBLE PRECISION :: arg1dd
  DOUBLE PRECISION :: arg1ddd
  DOUBLE PRECISION :: result1
  DOUBLE PRECISION :: result1d
  DOUBLE PRECISION :: result1dd
  DOUBLE PRECISION :: result1ddd
  INTRINSIC COS
  DOUBLE PRECISION :: result10
  DOUBLE PRECISION :: result10d0
  DOUBLE PRECISION :: result10d
  DOUBLE PRECISION :: result10dd
  DOUBLE PRECISION :: result11
  DOUBLE PRECISION :: result11d
  rd = xd(1)
  rd0 = xd0(1)
  rd1 = xd1(1)
  r = x(1)
  th = x(2)
  prd = pd(1)
  prd0 = pd0(1)
  prd1 = pd1(1)
  pr = p(1)
  pthd = pd(2)
  pthd0 = pd0(2)
  pthd1 = pd1(2)
  pth = p(2)
  l = 4d0/5d0
  m2ddd = (((2*rd*((-(rd0*2*COS(r)*rd1*SIN(r))-rd0*2*SIN(r)*rd1*COS(r))*&
&   (1d0-l*SIN(r)**2)-(rd0*COS(r)**2-SIN(r)**2*rd0)*l*2*SIN(r)*rd1*COS(r&
&   )-l*2*rd0*(2*SIN(r)*rd1*COS(r)**3-SIN(r)**3*2*COS(r)*rd1))+l*2*rd*(3&
&   *rd0*(2*SIN(r)*rd1*COS(r)**3-SIN(r)**3*2*COS(r)*rd1)-rd0*4*SIN(r)**3&
&   *rd1*COS(r)))*(1d0-l*SIN(r)**2)**2-(2*rd*((rd0*COS(r)**2-SIN(r)**2*&
&   rd0)*(1d0-l*SIN(r)**2)-SIN(r)**2*COS(r)**2*l*2*rd0)+l*2*rd*(3*SIN(r)&
&   **2*rd0*COS(r)**2-SIN(r)**4*rd0))*2**2*(1d0-l*SIN(r)**2)*l*SIN(r)*&
&   rd1*COS(r)+2**2*l*rd0*((2*rd*((rd1*COS(r)**2-SIN(r)**2*rd1)*(1d0-l*&
&   SIN(r)**2)-SIN(r)**2*COS(r)**2*l*2*rd1)+l*2*rd*(3*SIN(r)**2*rd1*COS(&
&   r)**2-SIN(r)**4*rd1))*(1d0-l*SIN(r)**2)*SIN(r)*COS(r)+(2*SIN(r)*rd*&
&   COS(r)*(1d0-l*SIN(r)**2)+SIN(r)**3*l*2*rd*COS(r))*((1d0-l*SIN(r)**2)&
&   *(rd1*COS(r)**2-SIN(r)**2*rd1)-l*2*SIN(r)**2*rd1*COS(r)**2)))*(1d0-l&
&   *SIN(r)**2)**4+((2*rd*((rd0*COS(r)**2-SIN(r)**2*rd0)*(1d0-l*SIN(r)**&
&   2)-SIN(r)**2*COS(r)**2*l*2*rd0)+l*2*rd*(3*SIN(r)**2*rd0*COS(r)**2-&
&   SIN(r)**4*rd0))*(1d0-l*SIN(r)**2)**2+(2*SIN(r)*rd*COS(r)*(1d0-l*SIN(&
&   r)**2)+SIN(r)**3*l*2*rd*COS(r))*2**2*(1d0-l*SIN(r)**2)*l*SIN(r)*rd0*&
&   COS(r))*2**3*(1d0-l*SIN(r)**2)**3*l*SIN(r)*rd1*COS(r))/(((1d0-l*SIN(&
&   r)**2)**2)**2)**2
  m2dd = ((2*rd*((rd0*COS(r)**2-SIN(r)**2*rd0)*(1d0-l*SIN(r)**2)-SIN(r)&
&   **2*COS(r)**2*l*2*rd0)+l*2*rd*(3*SIN(r)**2*rd0*COS(r)**2-SIN(r)**4*&
&   rd0))*(1d0-l*SIN(r)**2)**2+(2*SIN(r)*rd*COS(r)*(1d0-l*SIN(r)**2)+SIN&
&   (r)**3*l*2*rd*COS(r))*2**2*(1d0-l*SIN(r)**2)*l*SIN(r)*rd0*COS(r))/((&
&   1d0-l*SIN(r)**2)**2)**2
  m2dd0 = ((2*rd*((rd1*COS(r)**2-SIN(r)**2*rd1)*(1d0-l*SIN(r)**2)-SIN(r)&
&   **2*COS(r)**2*l*2*rd1)+l*2*rd*(3*SIN(r)**2*rd1*COS(r)**2-SIN(r)**4*&
&   rd1))*(1d0-l*SIN(r)**2)**2+(2*SIN(r)*rd*COS(r)*(1d0-l*SIN(r)**2)+SIN&
&   (r)**3*l*2*rd*COS(r))*2**2*(1d0-l*SIN(r)**2)*l*SIN(r)*rd1*COS(r))/((&
&   1d0-l*SIN(r)**2)**2)**2
  m2d = (2*SIN(r)*rd*COS(r)*(1d0-l*SIN(r)**2)+SIN(r)**3*l*2*rd*COS(r))/(&
&   1d0-l*SIN(r)**2)**2
  m2d0d = ((2*rd0*((rd1*COS(r)**2-SIN(r)**2*rd1)*(1d0-l*SIN(r)**2)-SIN(r&
&   )**2*COS(r)**2*l*2*rd1)+l*2*rd0*(3*SIN(r)**2*rd1*COS(r)**2-SIN(r)**4&
&   *rd1))*(1d0-l*SIN(r)**2)**2+(2*SIN(r)*rd0*COS(r)*(1d0-l*SIN(r)**2)+&
&   SIN(r)**3*l*2*rd0*COS(r))*2**2*(1d0-l*SIN(r)**2)*l*SIN(r)*rd1*COS(r)&
&   )/((1d0-l*SIN(r)**2)**2)**2
  m2d0 = (2*SIN(r)*rd0*COS(r)*(1d0-l*SIN(r)**2)+SIN(r)**3*l*2*rd0*COS(r)&
&   )/(1d0-l*SIN(r)**2)**2
  m2d1 = (2*SIN(r)*rd1*COS(r)*(1d0-l*SIN(r)**2)+SIN(r)**3*l*2*rd1*COS(r)&
&   )/(1d0-l*SIN(r)**2)**2
  m2 = SIN(r)**2/(1d0-l*SIN(r)**2)
  muddd = -(d*2**3*rd*rd0*rd1*COS(2*r))
  mudd = -(d*2**2*rd*rd0*SIN(2*r))
  mudd0 = -(d*2**2*rd*rd1*SIN(2*r))
  mud = d*2*rd*COS(2*r)
  mud0d = -(d*2**2*rd0*rd1*SIN(2*r))
  mud0 = d*2*rd0*COS(2*r)
  mu = d*SIN(2*r)
  arg1ddd = (((2*pthd*(pthd0*m2d1+pthd1*m2d0+pth*m2d0d)-2*pthd0*(pthd1*&
&   m2d+pth*m2dd0)-2*pth*pthd1*m2dd-pth**2*m2ddd)*m2**2+(2*pthd*(pthd0*&
&   m2+pth*m2d0)-2*pth*pthd0*m2d-pth**2*m2dd)*2*m2*m2d1-2*((2*pthd*(&
&   pthd1*m2+pth*m2d1)-2*pth*pthd1*m2d-pth**2*m2dd0)*m2*m2d0)-2*((2*pth*&
&   pthd*m2-pth**2*m2d)*(m2d1*m2d0+m2*m2d0d)))*m2**4-((2*pthd*(pthd0*m2+&
&   pth*m2d0)-2*pth*pthd0*m2d-pth**2*m2dd)*m2**2-(2*pth*pthd*m2-pth**2*&
&   m2d)*2*m2*m2d0)*2**2*m2**3*m2d1)/((m2**2)**2)**2
  arg1dd = 2*prd*prd0 + ((2*pthd*(pthd0*m2+pth*m2d0)-2*pth*pthd0*m2d-pth&
&   **2*m2dd)*m2**2-(2*pth*pthd*m2-pth**2*m2d)*2*m2*m2d0)/(m2**2)**2
  arg1dd0 = 2*prd*prd1 + ((2*pthd*(pthd1*m2+pth*m2d1)-2*pth*pthd1*m2d-&
&   pth**2*m2dd0)*m2**2-(2*pth*pthd*m2-pth**2*m2d)*2*m2*m2d1)/(m2**2)**2
  arg1d = 2*pr*prd + (2*pth*pthd*m2-pth**2*m2d)/m2**2
  arg1d0d = 2*prd0*prd1 + ((2*pthd0*(pthd1*m2+pth*m2d1)-2*pth*pthd1*m2d0&
&   -pth**2*m2d0d)*m2**2-(2*pth*pthd0*m2-pth**2*m2d0)*2*m2*m2d1)/(m2**2)&
&   **2
  arg1d0 = 2*pr*prd0 + (2*pth*pthd0*m2-pth**2*m2d0)/m2**2
  arg1d1 = 2*pr*prd1 + (2*pth*pthd1*m2-pth**2*m2d1)/m2**2
  arg1 = pr**2 + pth**2/m2
  IF (arg1 .EQ. 0.0) THEN
    result1d = 0.d0
    result1dd = 0.d0
    result1ddd = 0.D0
  ELSE
    IF (arg1 .EQ. 0.0) THEN
      result10d = 0.d0
      result10dd = 0.D0
    ELSE
      IF (arg1 .EQ. 0.0) THEN
        result11d = 0.D0
      ELSE
        result11d = arg1d1/(2.0*SQRT(arg1))
      END IF
      result11 = SQRT(arg1)
      result10dd = (arg1d0d*2.0*result11-arg1d0*2.0*result11d)/(2.0*&
&       result11)**2
      result10d = arg1d0/(2.0*result11)
    END IF
    IF (arg1 .EQ. 0.0) THEN
      result10d0 = 0.D0
    ELSE
      result10d0 = arg1d1/(2.0*SQRT(arg1))
    END IF
    result10 = SQRT(arg1)
    result1ddd = ((2.0*(arg1ddd*result10+arg1dd*result10d0)-2.0*(arg1dd0&
&     *result10d+arg1d*result10dd))*2.0**2*result10**2-(arg1dd*2.0*&
&     result10-arg1d*2.0*result10d)*2*2.0**2*result10*result10d0)/((2.0*&
&     result10)**2)**2
    result1dd = (arg1dd*2.0*result10-arg1d*2.0*result10d)/(2.0*result10)&
&     **2
    result1d = arg1d/(2.0*result10)
  END IF
  result1 = SQRT(arg1)
  hddd = muddd*pr + mudd*prd1 + prd0*mudd0 + prd*mud0d + result1ddd
  hdd = mudd*pr + mud*prd0 + prd*mud0 + result1dd
  hd = mud*pr + mu*prd + result1d
  h = mu*pr + result1
END SUBROUTINE HFUN_D_D_D


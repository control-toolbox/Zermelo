!        Generated by TAPENADE     (INRIA, Tropics team)
!  Tapenade 3.8 (r4996) - 25 Oct 2013 15:08
!
!  Differentiation of hfun in forward (tangent) mode (with options fixinterface):
!   variations   of useful results: h
!   with respect to varying inputs: p x
!   RW status of diff variables: h:out p:in x:in
SUBROUTINE HFUN_D(x, xd, p, pd, v, h, hd)
  IMPLICIT NONE
  DOUBLE PRECISION, INTENT(IN) :: x(2), p(2), v
  DOUBLE PRECISION, INTENT(IN) :: xd(2), pd(2)
  DOUBLE PRECISION, INTENT(OUT) :: h
  DOUBLE PRECISION, INTENT(OUT) :: hd
! local variables
  DOUBLE PRECISION :: r, th, pr, pth
  DOUBLE PRECISION :: rd, prd, pthd
  DOUBLE PRECISION :: l, m
  DOUBLE PRECISION :: md
  INTRINSIC SIN
  INTRINSIC SQRT
  DOUBLE PRECISION :: arg1
  DOUBLE PRECISION :: arg1d
  DOUBLE PRECISION :: result1
  DOUBLE PRECISION :: result1d
  rd = xd(1)
  r = x(1)
  th = x(2)
  prd = pd(1)
  pr = p(1)
  pthd = pd(2)
  pth = p(2)
  l = 4d0/5d0
  arg1d = (2*SIN(r)*rd*COS(r)*(1d0-l*SIN(r)**2)+SIN(r)**3*l*2*rd*COS(r))&
&   /(1d0-l*SIN(r)**2)**2
  arg1 = SIN(r)**2/(1d0-l*SIN(r)**2)
  IF (arg1 .EQ. 0.0) THEN
    md = 0.D0
  ELSE
    md = arg1d/(2.0*SQRT(arg1))
  END IF
  m = SQRT(arg1)
  arg1d = 2*pr*prd + 2*pth*(pthd*m-pth*md)/m**3
  arg1 = pr**2 + (pth/m)**2
  IF (arg1 .EQ. 0.0) THEN
    result1d = 0.D0
  ELSE
    result1d = arg1d/(2.0*SQRT(arg1))
  END IF
  result1 = SQRT(arg1)
  hd = v*pthd + result1d
  h = v*pth + result1
END SUBROUTINE HFUN_D

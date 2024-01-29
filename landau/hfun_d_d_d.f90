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
! Landau
SUBROUTINE HFUN_D_D_D(x, xd1, xd0, xd, p, pd1, pd0, pd, c, h, hd, hdd, &
& hddd)
  IMPLICIT NONE
  DOUBLE PRECISION, INTENT(IN) :: x(2), p(2), c(2)
  DOUBLE PRECISION, INTENT(IN) :: xd1(2), pd1(2)
  DOUBLE PRECISION, INTENT(IN) :: xd0(2), pd0(2)
  DOUBLE PRECISION, INTENT(IN) :: xd(2), pd(2)
  DOUBLE PRECISION, INTENT(OUT) :: h
  DOUBLE PRECISION, INTENT(OUT) :: hd
  DOUBLE PRECISION, INTENT(OUT) :: hdd
  DOUBLE PRECISION, INTENT(OUT) :: hddd
! local variables
  DOUBLE PRECISION :: r, th, pr, pth
  DOUBLE PRECISION :: rd1, thd1, prd1, pthd1
  DOUBLE PRECISION :: rd0, thd0, prd0, pthd0
  DOUBLE PRECISION :: rd, thd, prd, pthd
  DOUBLE PRECISION :: m2, a, g1, g2, g3, cr, sr, ct, st, mu1, mu2
  DOUBLE PRECISION :: m2d1, crd1, srd1, ctd1, std1
  DOUBLE PRECISION :: m2d0, crd0, srd0, ctd0, std0, mu1d0, mu2d0
  DOUBLE PRECISION :: m2d0d, crd0d, srd0d, ctd0d, std0d, mu1d0d, mu2d0d
  DOUBLE PRECISION :: m2d, crd, srd, ctd, std, mu1d, mu2d
  DOUBLE PRECISION :: m2dd0, crdd0, srdd0, ctdd0, stdd0, mu1dd0, mu2dd0
  DOUBLE PRECISION :: m2dd, crdd, srdd, ctdd, stdd, mu1dd, mu2dd
  DOUBLE PRECISION :: m2ddd, crddd, srddd, ctddd, stddd, mu1ddd, mu2ddd
  INTRINSIC COS
  INTRINSIC SIN
  REAL :: cs
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
  thd = xd(2)
  thd0 = xd0(2)
  thd1 = xd1(2)
  th = x(2)
  prd = pd(1)
  prd0 = pd0(1)
  prd1 = pd1(1)
  pr = p(1)
  pthd = pd(2)
  pthd0 = pd0(2)
  pthd1 = pd1(2)
  pth = p(2)
  crddd = rd*rd0*rd1*SIN(r)
  crdd = -(rd*rd0*COS(r))
  crdd0 = -(rd*rd1*COS(r))
  crd = -(rd*SIN(r))
  crd0d = -(rd0*rd1*COS(r))
  crd0 = -(rd0*SIN(r))
  crd1 = -(rd1*SIN(r))
  cr = COS(r)
  srddd = -(rd*rd0*rd1*COS(r))
  srdd = -(rd*rd0*SIN(r))
  srdd0 = -(rd*rd1*SIN(r))
  srd = rd*COS(r)
  srd0d = -(rd0*rd1*SIN(r))
  srd0 = rd0*COS(r)
  srd1 = rd1*COS(r)
  sr = SIN(r)
  ctddd = thd*thd0*thd1*SIN(th)
  ctdd = -(thd*thd0*COS(th))
  ctdd0 = -(thd*thd1*COS(th))
  ctd = -(thd*SIN(th))
  ctd0d = -(thd0*thd1*COS(th))
  ctd0 = -(thd0*SIN(th))
  ctd1 = -(thd1*SIN(th))
  ct = COS(th)
  stddd = -(thd*thd0*thd1*COS(th))
  stdd = -(thd*thd0*SIN(th))
  stdd0 = -(thd*thd1*SIN(th))
  std = thd*COS(th)
  std0d = -(thd0*thd1*SIN(th))
  std0 = thd0*COS(th)
  std1 = thd1*COS(th)
  st = SIN(th)
  g1 = c(1)
  g2 = c(2)
  g3 = c(3)
  a = c(4)
  mu1ddd = a*g1*cs*srddd + (g2-g3)*((ctddd*st+ctdd*std1+ctdd0*std0+ctd*&
&   std0d+ctd0d*std+ctd0*stdd0+ctd1*stdd+ct*stddd)*sr+(ctdd*st+ctd*std0+&
&   ctd0*std+ct*stdd)*srd1+(ctdd0*st+ctd*std1+ctd1*std+ct*stdd0)*srd0+(&
&   ctd*st+ct*std)*srd0d+(ctd0d*st+ctd0*std1+ctd1*std0+ct*std0d)*srd+(&
&   ctd0*st+ct*std0)*srdd0+(ctd1*st+ct*std1)*srdd+ct*st*srddd) - a*((g2*&
&   2*(ctd0d*ctd+ctd0*ctdd0+ctd1*ctdd+ct*ctddd)+g3*2*(std0d*std+std0*&
&   stdd0+std1*stdd+st*stddd))*cr*sr+(g2*2*(ctd0*ctd+ct*ctdd)+g3*2*(std0&
&   *std+st*stdd))*(crd1*sr+cr*srd1)+(g2*2*(ctd1*ctd+ct*ctdd0)+g3*2*(&
&   std1*std+st*stdd0))*(crd0*sr+cr*srd0)+(g2*2*ct*ctd+g3*2*st*std)*(&
&   crd0d*sr+crd0*srd1+crd1*srd0+cr*srd0d)+(g2*2*(ctd1*ctd0+ct*ctd0d)+g3&
&   *2*(std1*std0+st*std0d))*(crd*sr+cr*srd)+(g2*2*ct*ctd0+g3*2*st*std0)&
&   *(crdd0*sr+crd*srd1+crd1*srd+cr*srdd0)+(g2*2*ct*ctd1+g3*2*st*std1)*(&
&   crdd*sr+crd*srd0+crd0*srd+cr*srdd)+(g2*ct**2+g3*st**2)*(crddd*sr+&
&   crdd*srd1+crdd0*srd0+crd*srd0d+crd0d*srd+crd0*srdd0+crd1*srdd+cr*&
&   srddd))
  mu1dd = a*g1*cs*srdd + (g2-g3)*((ctdd*st+ctd*std0+ctd0*std+ct*stdd)*sr&
&   +(ctd*st+ct*std)*srd0+(ctd0*st+ct*std0)*srd+ct*st*srdd) - a*((g2*2*(&
&   ctd0*ctd+ct*ctdd)+g3*2*(std0*std+st*stdd))*cr*sr+(g2*2*ct*ctd+g3*2*&
&   st*std)*(crd0*sr+cr*srd0)+(g2*2*ct*ctd0+g3*2*st*std0)*(crd*sr+cr*srd&
&   )+(g2*ct**2+g3*st**2)*(crdd*sr+crd*srd0+crd0*srd+cr*srdd))
  mu1dd0 = a*g1*cs*srdd0 + (g2-g3)*((ctdd0*st+ctd*std1+ctd1*std+ct*stdd0&
&   )*sr+(ctd*st+ct*std)*srd1+(ctd1*st+ct*std1)*srd+ct*st*srdd0) - a*((&
&   g2*2*(ctd1*ctd+ct*ctdd0)+g3*2*(std1*std+st*stdd0))*cr*sr+(g2*2*ct*&
&   ctd+g3*2*st*std)*(crd1*sr+cr*srd1)+(g2*2*ct*ctd1+g3*2*st*std1)*(crd*&
&   sr+cr*srd)+(g2*ct**2+g3*st**2)*(crdd0*sr+crd*srd1+crd1*srd+cr*srdd0)&
&   )
  mu1d = a*g1*cs*srd + (g2-g3)*((ctd*st+ct*std)*sr+ct*st*srd) - a*((g2*2&
&   *ct*ctd+g3*2*st*std)*cr*sr+(g2*ct**2+g3*st**2)*(crd*sr+cr*srd))
  mu1d0d = a*g1*cs*srd0d + (g2-g3)*((ctd0d*st+ctd0*std1+ctd1*std0+ct*&
&   std0d)*sr+(ctd0*st+ct*std0)*srd1+(ctd1*st+ct*std1)*srd0+ct*st*srd0d)&
&   - a*((g2*2*(ctd1*ctd0+ct*ctd0d)+g3*2*(std1*std0+st*std0d))*cr*sr+(g2&
&   *2*ct*ctd0+g3*2*st*std0)*(crd1*sr+cr*srd1)+(g2*2*ct*ctd1+g3*2*st*&
&   std1)*(crd0*sr+cr*srd0)+(g2*ct**2+g3*st**2)*(crd0d*sr+crd0*srd1+crd1&
&   *srd0+cr*srd0d))
  mu1d0 = a*g1*cs*srd0 + (g2-g3)*((ctd0*st+ct*std0)*sr+ct*st*srd0) - a*(&
&   (g2*2*ct*ctd0+g3*2*st*std0)*cr*sr+(g2*ct**2+g3*st**2)*(crd0*sr+cr*&
&   srd0))
  mu1 = a*g1*cs*sr + (g2-g3)*ct*st*sr - a*(g2*ct**2+g3*st**2)*cr*sr
  mu2ddd = a*(g2-g3)*(ctddd*st+ctdd*std1+ctdd0*std0+ctd*std0d+ctd0d*std+&
&   ctd0*stdd0+ctd1*stdd+ct*stddd) - g1*crddd + (g3*2*(std0d*std+std0*&
&   stdd0+std1*stdd+st*stddd)+g2*2*(ctd0d*ctd+ctd0*ctdd0+ctd1*ctdd+ct*&
&   ctddd))*cr + (g3*2*(std0*std+st*stdd)+g2*2*(ctd0*ctd+ct*ctdd))*crd1 &
&   + (g3*2*(std1*std+st*stdd0)+g2*2*(ctd1*ctd+ct*ctdd0))*crd0 + (g3*2*&
&   st*std+g2*2*ct*ctd)*crd0d + (g3*2*(std1*std0+st*std0d)+g2*2*(ctd1*&
&   ctd0+ct*ctd0d))*crd + (g3*2*st*std0+g2*2*ct*ctd0)*crdd0 + (g3*2*st*&
&   std1+g2*2*ct*ctd1)*crdd + (g3*st**2+g2*ct**2)*crddd
  mu2dd = a*(g2-g3)*(ctdd*st+ctd*std0+ctd0*std+ct*stdd) - g1*crdd + (g3*&
&   2*(std0*std+st*stdd)+g2*2*(ctd0*ctd+ct*ctdd))*cr + (g3*2*st*std+g2*2&
&   *ct*ctd)*crd0 + (g3*2*st*std0+g2*2*ct*ctd0)*crd + (g3*st**2+g2*ct**2&
&   )*crdd
  mu2dd0 = a*(g2-g3)*(ctdd0*st+ctd*std1+ctd1*std+ct*stdd0) - g1*crdd0 + &
&   (g3*2*(std1*std+st*stdd0)+g2*2*(ctd1*ctd+ct*ctdd0))*cr + (g3*2*st*&
&   std+g2*2*ct*ctd)*crd1 + (g3*2*st*std1+g2*2*ct*ctd1)*crd + (g3*st**2+&
&   g2*ct**2)*crdd0
  mu2d = a*(g2-g3)*(ctd*st+ct*std) - g1*crd + (g3*2*st*std+g2*2*ct*ctd)*&
&   cr + (g3*st**2+g2*ct**2)*crd
  mu2d0d = a*(g2-g3)*(ctd0d*st+ctd0*std1+ctd1*std0+ct*std0d) - g1*crd0d &
&   + (g3*2*(std1*std0+st*std0d)+g2*2*(ctd1*ctd0+ct*ctd0d))*cr + (g3*2*&
&   st*std0+g2*2*ct*ctd0)*crd1 + (g3*2*st*std1+g2*2*ct*ctd1)*crd0 + (g3*&
&   st**2+g2*ct**2)*crd0d
  mu2d0 = a*(g2-g3)*(ctd0*st+ct*std0) - g1*crd0 + (g3*2*st*std0+g2*2*ct*&
&   ctd0)*cr + (g3*st**2+g2*ct**2)*crd0
  mu2 = a*(g2-g3)*ct*st - g1*cr + (g3*st**2+g2*ct**2)*cr
  m2ddd = 2*rd*(-(rd0*2*COS(r)*rd1*SIN(r))-rd0*2*SIN(r)*rd1*COS(r))
  m2dd = 2*rd*(rd0*COS(r)**2-SIN(r)**2*rd0)
  m2dd0 = 2*rd*(rd1*COS(r)**2-SIN(r)**2*rd1)
  m2d = 2*SIN(r)*rd*COS(r)
  m2d0d = 2*rd0*(rd1*COS(r)**2-SIN(r)**2*rd1)
  m2d0 = 2*SIN(r)*rd0*COS(r)
  m2d1 = 2*SIN(r)*rd1*COS(r)
  m2 = SIN(r)**2
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
  hddd = mu1ddd*pr + mu1dd*prd1 + prd0*mu1dd0 + prd*mu1d0d + mu2ddd*pth &
&   + mu2dd*pthd1 + pthd0*mu2dd0 + pthd*mu2d0d + result1ddd
  hdd = mu1dd*pr + mu1d*prd0 + prd*mu1d0 + mu2dd*pth + mu2d*pthd0 + pthd&
&   *mu2d0 + result1dd
  hd = mu1d*pr + mu1*prd + mu2d*pth + mu2*pthd + result1d
  h = mu1*pr + mu2*pth + result1
END SUBROUTINE HFUN_D_D_D


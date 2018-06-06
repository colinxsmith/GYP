extern "C" double opt(int n,double*a,double*b) {
  double back = 0;
  while(n--) {
    back += *a++ * *b;
    *b *= 10;
    b++;
  }
  return back;
}
extern "C" int iopt(int n,int*a,int*b) {
  int back = 0;
  while(n--) {
    back += *a++ * *b;
    *b *= 11.1;
    b++;
  }
  return back;  
}
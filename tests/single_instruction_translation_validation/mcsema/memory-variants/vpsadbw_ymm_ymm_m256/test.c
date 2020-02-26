void main() {
  __asm__("vpsadbw -32(%rbp), %ymm2, %ymm1");
}
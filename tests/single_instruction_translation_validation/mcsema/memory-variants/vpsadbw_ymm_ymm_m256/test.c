void main() {
  __asm__("vpsadbw -16(%rbp), %ymm2, %ymm1");
}
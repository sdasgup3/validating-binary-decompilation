void leaf() {
  __asm__("vhsubps -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}
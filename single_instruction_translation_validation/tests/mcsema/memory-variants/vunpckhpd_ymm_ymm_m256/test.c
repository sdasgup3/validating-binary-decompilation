void leaf() {
  __asm__("vunpckhpd -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}
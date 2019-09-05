void leaf() {
  __asm__("vunpcklpd -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}
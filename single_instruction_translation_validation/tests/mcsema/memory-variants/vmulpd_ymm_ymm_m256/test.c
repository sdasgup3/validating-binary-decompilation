void leaf() {
  __asm__("vmulpd -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}
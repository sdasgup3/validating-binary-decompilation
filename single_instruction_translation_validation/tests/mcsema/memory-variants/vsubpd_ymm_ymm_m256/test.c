void leaf() {
  __asm__("vsubpd -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}
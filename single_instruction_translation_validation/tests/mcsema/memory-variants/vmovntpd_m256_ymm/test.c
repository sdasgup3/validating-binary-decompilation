void leaf() {
  __asm__("vmovntpd %ymm1, -4(%rbp)");
  }

void main() {
  leaf();
}
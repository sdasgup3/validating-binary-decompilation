void leaf() {
  __asm__("vunpcklps -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}
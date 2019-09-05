void leaf() {
  __asm__("vpunpckhwd -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}
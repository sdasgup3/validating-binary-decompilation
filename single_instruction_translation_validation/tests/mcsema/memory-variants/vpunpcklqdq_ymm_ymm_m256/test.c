void leaf() {
  __asm__("vpunpcklqdq -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}
void leaf() {
  __asm__("vphsubw -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}
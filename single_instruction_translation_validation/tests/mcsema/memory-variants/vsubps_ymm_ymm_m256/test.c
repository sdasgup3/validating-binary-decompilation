void leaf() {
  __asm__("vsubps -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}
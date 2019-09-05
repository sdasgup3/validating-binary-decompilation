void leaf() {
  __asm__("vmovups -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}
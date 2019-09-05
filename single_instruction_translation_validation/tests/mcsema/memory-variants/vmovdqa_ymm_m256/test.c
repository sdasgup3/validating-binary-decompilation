void leaf() {
  __asm__("vmovdqa -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}
void leaf() {
  __asm__("vmovddup -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}
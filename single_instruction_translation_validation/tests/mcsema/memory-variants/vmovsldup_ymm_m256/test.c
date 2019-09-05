void leaf() {
  __asm__("vmovsldup -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}
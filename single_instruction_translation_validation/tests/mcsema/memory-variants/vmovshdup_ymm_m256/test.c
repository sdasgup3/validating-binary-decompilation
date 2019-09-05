void leaf() {
  __asm__("vmovshdup -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}
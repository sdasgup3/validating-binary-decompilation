void leaf() {
  __asm__("vmovdqa %ymm1, -4(%rbp)");
  }

void main() {
  leaf();
}
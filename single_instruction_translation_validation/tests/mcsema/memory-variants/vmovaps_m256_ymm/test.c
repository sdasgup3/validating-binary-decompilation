void leaf() {
  __asm__("vmovaps %ymm1, -4(%rbp)");
  }

void main() {
  leaf();
}
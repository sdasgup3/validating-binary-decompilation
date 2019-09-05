void leaf() {
  __asm__("vmovdqu %ymm1, -4(%rbp)");
  }

void main() {
  leaf();
}
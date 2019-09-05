void leaf() {
  __asm__("vmovups %ymm1, -4(%rbp)");
  }

void main() {
  leaf();
}
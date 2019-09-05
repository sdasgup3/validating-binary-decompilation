void leaf() {
  __asm__("vmovupd %ymm1, -4(%rbp)");
  }

void main() {
  leaf();
}
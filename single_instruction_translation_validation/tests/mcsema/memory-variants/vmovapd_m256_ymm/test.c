void leaf() {
  __asm__("vmovapd %ymm1, -4(%rbp)");
  }

void main() {
  leaf();
}
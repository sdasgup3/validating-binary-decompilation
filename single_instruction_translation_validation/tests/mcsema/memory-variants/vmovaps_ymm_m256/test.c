void leaf() {
  __asm__("vmovaps -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}
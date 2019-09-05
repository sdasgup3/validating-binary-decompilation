void leaf() {
  __asm__("vmovdqu -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}
void leaf() {
  __asm__("vmovupd -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}
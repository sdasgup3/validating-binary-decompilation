void leaf() {
  __asm__("vmovapd -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}
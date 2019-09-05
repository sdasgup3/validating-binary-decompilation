void leaf() {
  __asm__("vmovupd %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}
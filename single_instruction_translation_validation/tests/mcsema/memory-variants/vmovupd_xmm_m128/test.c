void leaf() {
  __asm__("vmovupd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
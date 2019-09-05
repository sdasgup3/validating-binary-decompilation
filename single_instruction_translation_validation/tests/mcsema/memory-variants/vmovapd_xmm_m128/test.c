void leaf() {
  __asm__("vmovapd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
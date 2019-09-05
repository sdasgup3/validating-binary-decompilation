void leaf() {
  __asm__("vrcpps %xmm2, %xmm1");
  }

void main() {
  leaf();
}
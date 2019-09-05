void leaf() {
  __asm__("addpd %xmm2, %xmm1");
  }

void main() {
  leaf();
}
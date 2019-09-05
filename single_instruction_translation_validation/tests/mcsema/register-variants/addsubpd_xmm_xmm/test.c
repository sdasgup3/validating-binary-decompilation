void leaf() {
  __asm__("addsubpd %xmm2, %xmm1");
  }

void main() {
  leaf();
}
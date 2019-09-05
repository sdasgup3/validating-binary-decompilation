void leaf() {
  __asm__("orpd %xmm2, %xmm1");
  }

void main() {
  leaf();
}
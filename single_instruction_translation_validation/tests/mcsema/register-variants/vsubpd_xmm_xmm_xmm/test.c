void leaf() {
  __asm__("vsubpd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}
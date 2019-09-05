void leaf() {
  __asm__("vpsravd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}
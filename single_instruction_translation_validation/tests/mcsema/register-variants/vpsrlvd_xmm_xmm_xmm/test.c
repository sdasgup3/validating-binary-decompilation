void leaf() {
  __asm__("vpsrlvd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}
void leaf() {
  __asm__("vpsrlq %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}
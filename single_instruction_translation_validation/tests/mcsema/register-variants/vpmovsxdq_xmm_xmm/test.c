void leaf() {
  __asm__("vpmovsxdq %xmm2, %xmm1");
  }

void main() {
  leaf();
}
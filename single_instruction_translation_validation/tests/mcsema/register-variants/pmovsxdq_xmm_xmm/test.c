void leaf() {
  __asm__("pmovsxdq %xmm2, %xmm1");
  }

void main() {
  leaf();
}
void leaf() {
  __asm__("vpmovsxdq %xmm2, %ymm1");
  }

void main() {
  leaf();
}
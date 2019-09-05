void leaf() {
  __asm__("pmovsxbw %xmm2, %xmm1");
  }

void main() {
  leaf();
}
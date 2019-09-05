void leaf() {
  __asm__("vpmovsxbw %xmm2, %xmm1");
  }

void main() {
  leaf();
}
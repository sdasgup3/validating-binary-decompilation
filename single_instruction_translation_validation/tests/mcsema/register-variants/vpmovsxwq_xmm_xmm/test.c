void leaf() {
  __asm__("vpmovsxwq %xmm2, %xmm1");
  }

void main() {
  leaf();
}
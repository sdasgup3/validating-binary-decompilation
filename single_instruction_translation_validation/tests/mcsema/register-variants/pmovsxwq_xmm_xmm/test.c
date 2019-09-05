void leaf() {
  __asm__("pmovsxwq %xmm2, %xmm1");
  }

void main() {
  leaf();
}
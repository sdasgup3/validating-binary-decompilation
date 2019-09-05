void leaf() {
  __asm__("pmovsxwd %xmm2, %xmm1");
  }

void main() {
  leaf();
}
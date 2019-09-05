void leaf() {
  __asm__("vpmovsxwd %xmm2, %xmm1");
  }

void main() {
  leaf();
}
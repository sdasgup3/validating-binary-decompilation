void leaf() {
  __asm__("vpmovsxbd %xmm2, %xmm1");
  }

void main() {
  leaf();
}
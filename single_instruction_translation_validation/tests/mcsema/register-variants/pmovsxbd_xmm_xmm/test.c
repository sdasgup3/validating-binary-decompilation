void leaf() {
  __asm__("pmovsxbd %xmm2, %xmm1");
  }

void main() {
  leaf();
}
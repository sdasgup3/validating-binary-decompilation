void leaf() {
  __asm__("vpmovsxbd %xmm2, %ymm1");
  }

void main() {
  leaf();
}
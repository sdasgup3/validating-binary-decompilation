void leaf() {
  __asm__("vpmovsxwd %xmm2, %ymm1");
  }

void main() {
  leaf();
}
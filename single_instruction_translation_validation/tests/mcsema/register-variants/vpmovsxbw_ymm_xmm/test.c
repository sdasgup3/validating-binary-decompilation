void leaf() {
  __asm__("vpmovsxbw %xmm2, %ymm1");
  }

void main() {
  leaf();
}
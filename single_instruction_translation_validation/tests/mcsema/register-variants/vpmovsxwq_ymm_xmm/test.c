void leaf() {
  __asm__("vpmovsxwq %xmm2, %ymm1");
  }

void main() {
  leaf();
}
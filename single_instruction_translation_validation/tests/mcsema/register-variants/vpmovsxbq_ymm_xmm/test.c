void leaf() {
  __asm__("vpmovsxbq %xmm2, %ymm1");
  }

void main() {
  leaf();
}
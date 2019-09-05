void leaf() {
  __asm__("pmovsxbq %xmm2, %xmm1");
  }

void main() {
  leaf();
}
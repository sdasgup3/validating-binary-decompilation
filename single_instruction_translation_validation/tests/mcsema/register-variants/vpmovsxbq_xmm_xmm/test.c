void leaf() {
  __asm__("vpmovsxbq %xmm2, %xmm1");
  }

void main() {
  leaf();
}
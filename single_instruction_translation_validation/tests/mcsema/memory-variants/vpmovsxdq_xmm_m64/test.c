void leaf() {
  __asm__("vpmovsxdq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
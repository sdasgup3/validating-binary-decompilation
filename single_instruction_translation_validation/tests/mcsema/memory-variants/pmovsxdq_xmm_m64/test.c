void leaf() {
  __asm__("pmovsxdq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
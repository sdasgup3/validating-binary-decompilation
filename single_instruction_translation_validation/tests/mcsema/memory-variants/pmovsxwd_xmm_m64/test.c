void leaf() {
  __asm__("pmovsxwd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
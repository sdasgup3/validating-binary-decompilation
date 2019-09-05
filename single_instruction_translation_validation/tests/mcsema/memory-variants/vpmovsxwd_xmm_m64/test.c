void leaf() {
  __asm__("vpmovsxwd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
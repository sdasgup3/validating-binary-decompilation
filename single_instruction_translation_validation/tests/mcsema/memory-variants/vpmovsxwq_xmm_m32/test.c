void leaf() {
  __asm__("vpmovsxwq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
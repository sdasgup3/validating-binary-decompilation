void leaf() {
  __asm__("pmovsxwq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
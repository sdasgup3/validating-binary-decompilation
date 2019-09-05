void leaf() {
  __asm__("pmovsxbq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
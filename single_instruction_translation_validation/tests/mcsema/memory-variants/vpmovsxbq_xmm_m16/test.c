void leaf() {
  __asm__("vpmovsxbq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
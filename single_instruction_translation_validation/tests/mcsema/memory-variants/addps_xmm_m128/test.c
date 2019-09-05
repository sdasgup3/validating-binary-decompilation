void leaf() {
  __asm__("addps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
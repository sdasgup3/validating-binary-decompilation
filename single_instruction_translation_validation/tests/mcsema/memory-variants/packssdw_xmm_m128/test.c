void leaf() {
  __asm__("packssdw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
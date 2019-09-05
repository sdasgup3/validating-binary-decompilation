void leaf() {
  __asm__("addsubpd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
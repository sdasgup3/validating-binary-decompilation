void leaf() {
  __asm__("pminsw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
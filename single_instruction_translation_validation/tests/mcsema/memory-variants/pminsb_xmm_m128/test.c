void leaf() {
  __asm__("pminsb -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
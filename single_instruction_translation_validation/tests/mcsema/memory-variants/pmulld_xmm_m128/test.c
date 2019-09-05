void leaf() {
  __asm__("pmulld -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
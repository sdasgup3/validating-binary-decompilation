void leaf() {
  __asm__("pmulhrsw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
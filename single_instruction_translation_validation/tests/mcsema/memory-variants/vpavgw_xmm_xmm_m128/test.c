void leaf() {
  __asm__("vpavgw -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
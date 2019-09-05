void leaf() {
  __asm__("vpsadbw -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
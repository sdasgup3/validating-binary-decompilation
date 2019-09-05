void leaf() {
  __asm__("pmuldq %xmm2, %xmm1");
  }

void main() {
  leaf();
}
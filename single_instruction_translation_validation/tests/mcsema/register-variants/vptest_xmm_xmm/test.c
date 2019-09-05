void leaf() {
  __asm__("vptest %xmm2, %xmm1");
  }

void main() {
  leaf();
}
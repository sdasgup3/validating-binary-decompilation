void leaf() {
  __asm__("ptest %xmm2, %xmm1");
  }

void main() {
  leaf();
}
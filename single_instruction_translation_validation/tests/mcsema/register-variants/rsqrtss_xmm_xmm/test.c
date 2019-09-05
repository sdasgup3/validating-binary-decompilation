void leaf() {
  __asm__("rsqrtss %xmm2, %xmm1");
  }

void main() {
  leaf();
}
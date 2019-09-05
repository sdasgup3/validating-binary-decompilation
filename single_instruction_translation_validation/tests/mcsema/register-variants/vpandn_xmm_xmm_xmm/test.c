void leaf() {
  __asm__("vpandn %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}
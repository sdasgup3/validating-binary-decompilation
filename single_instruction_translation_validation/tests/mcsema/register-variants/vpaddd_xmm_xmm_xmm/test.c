void leaf() {
  __asm__("vpaddd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}
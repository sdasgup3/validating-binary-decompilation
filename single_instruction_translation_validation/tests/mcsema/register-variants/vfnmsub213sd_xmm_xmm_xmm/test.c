void leaf() {
  __asm__("vfnmsub213sd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}
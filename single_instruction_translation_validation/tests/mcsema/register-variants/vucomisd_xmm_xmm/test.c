void leaf() {
  __asm__("vucomisd %xmm2, %xmm1");
  }

void main() {
  leaf();
}
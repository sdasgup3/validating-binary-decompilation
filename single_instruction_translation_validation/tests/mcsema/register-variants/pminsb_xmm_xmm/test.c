void leaf() {
  __asm__("pminsb %xmm2, %xmm1");
  }

void main() {
  leaf();
}
void leaf() {
  __asm__("vcvttps2dq %xmm2, %xmm1");
  }

void main() {
  leaf();
}
void leaf() {
  __asm__("vpackusdw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}
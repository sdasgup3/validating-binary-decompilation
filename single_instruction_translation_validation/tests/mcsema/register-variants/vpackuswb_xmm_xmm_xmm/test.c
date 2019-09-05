void leaf() {
  __asm__("vpackuswb %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}
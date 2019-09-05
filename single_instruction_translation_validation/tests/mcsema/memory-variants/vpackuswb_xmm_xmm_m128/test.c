void leaf() {
  __asm__("vpackuswb -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
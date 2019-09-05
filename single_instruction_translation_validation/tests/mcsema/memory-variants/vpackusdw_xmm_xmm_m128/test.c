void leaf() {
  __asm__("vpackusdw -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
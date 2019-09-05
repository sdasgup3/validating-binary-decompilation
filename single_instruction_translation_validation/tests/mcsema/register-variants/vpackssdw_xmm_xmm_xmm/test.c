void leaf() {
  __asm__("vpackssdw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}
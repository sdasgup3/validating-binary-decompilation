void leaf() {
  __asm__("vpackssdw -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
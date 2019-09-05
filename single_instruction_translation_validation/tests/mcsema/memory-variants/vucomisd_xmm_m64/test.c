void leaf() {
  __asm__("vucomisd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
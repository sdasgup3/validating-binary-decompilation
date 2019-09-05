void leaf() {
  __asm__("vdppd $0x0, -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
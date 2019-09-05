void leaf() {
  __asm__("pcmpistrm $0x0, -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
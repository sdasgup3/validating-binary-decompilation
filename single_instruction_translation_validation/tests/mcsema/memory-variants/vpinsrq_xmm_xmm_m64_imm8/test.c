void leaf() {
  __asm__("vpinsrq $0x0, -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
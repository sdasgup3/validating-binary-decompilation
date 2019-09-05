void leaf() {
  __asm__("vpinsrb $0x0, -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
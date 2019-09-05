void leaf() {
  __asm__("vpinsrq $0x77, %rbx, %xmm2, %xmm1");
  }

void main() {
  leaf();
}
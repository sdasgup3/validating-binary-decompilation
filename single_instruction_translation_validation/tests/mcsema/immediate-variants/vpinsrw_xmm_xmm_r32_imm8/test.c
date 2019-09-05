void leaf() {
  __asm__("vpinsrw $0x77, %ebx, %xmm2, %xmm1");
  }

void main() {
  leaf();
}
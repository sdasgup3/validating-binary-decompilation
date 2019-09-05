void leaf() {
  __asm__("vpinsrb $0x77, %ebx, %xmm2, %xmm1");
  }

void main() {
  leaf();
}
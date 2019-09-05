void leaf() {
  __asm__("vpinsrd $0x77, %ebx, %xmm2, %xmm1");
  }

void main() {
  leaf();
}
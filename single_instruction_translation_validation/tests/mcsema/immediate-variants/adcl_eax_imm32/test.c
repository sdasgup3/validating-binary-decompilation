void leaf() {
  __asm__("adcl $0x77, %eax");
  }

void main() {
  leaf();
}
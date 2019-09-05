void leaf() {
  __asm__("addl $0x77, %eax");
  }

void main() {
  leaf();
}
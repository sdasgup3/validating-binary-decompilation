void leaf() {
  __asm__("cmpl $0x77, %eax");
  }

void main() {
  leaf();
}
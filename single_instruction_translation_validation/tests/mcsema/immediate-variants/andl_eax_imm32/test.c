void leaf() {
  __asm__("andl $0x77, %eax");
  }

void main() {
  leaf();
}